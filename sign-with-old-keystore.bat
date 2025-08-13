@echo off
echo ========================================
echo Sign AAB with Existing Keystore
echo ========================================

echo.
echo Step 1: Check if keystore exists...
if not exist "C:\LiveTranslateproject\android\app\my-release-key.keystore" (
    echo ERROR: Keystore not found!
    echo Please check the path: C:\LiveTranslateproject\android\app\my-release-key.keystore
    pause
    exit /b 1
)

echo Keystore found! ✓

echo.
echo Step 2: List keystore details...
keytool -list -v -keystore "C:\LiveTranslateproject\android\app\my-release-key.keystore"

echo.
echo Step 3: Sign AAB (if exists)...
if exist "app-unsigned.aab" (
    echo Signing AAB...
    jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 -keystore "C:\LiveTranslateproject\android\app\my-release-key.keystore" app-unsigned.aab alias_name
    
    echo.
    echo Step 4: Optimize AAB...
    zipalign -v -p 4 app-unsigned.aab app-signed.aab
    
    echo.
    echo ========================================
    echo AAB signed successfully!
    echo File: app-signed.aab
    echo ========================================
) else (
    echo.
    echo NOTE: No unsigned AAB found.
    echo Please download AAB from PWA Builder first.
    echo Then place it as 'app-unsigned.aab' in this folder.
)

echo.
echo ========================================
echo Next Steps:
echo 1. Upload app-signed.aab to Google Play Console
echo 2. Use same package name as old app
echo 3. This will update existing app
echo ========================================
pause
