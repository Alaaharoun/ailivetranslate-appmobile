@echo off
echo ========================================
echo Find Correct Keystore for Google Play
echo ========================================

echo.
echo 🔍 Searching for keystore files...
echo.

echo Step 1: Check old project keystore...
if exist "C:\LiveTranslateproject\android\app\my-release-key.keystore" (
    echo ✅ Found: C:\LiveTranslateproject\android\app\my-release-key.keystore
    echo.
    echo Checking fingerprint...
    keytool -list -v -keystore "C:\LiveTranslateproject\android\app\my-release-key.keystore"
) else (
    echo ❌ Not found: C:\LiveTranslateproject\android\app\my-release-key.keystore
)

echo.
echo Step 2: Check Android Studio keystores...
if exist "%USERPROFILE%\.android\debug.keystore" (
    echo ✅ Found: %USERPROFILE%\.android\debug.keystore
    echo.
    echo Checking fingerprint...
    keytool -list -v -keystore "%USERPROFILE%\.android\debug.keystore"
) else (
    echo ❌ Not found: %USERPROFILE%\.android\debug.keystore
)

echo.
echo Step 3: Check for other keystore files...
dir /s /b "C:\*.keystore" 2>nul
dir /s /b "C:\*.jks" 2>nul

echo.
echo ========================================
echo Expected SHA1: DF:39:24:17:81:56:18:B3:76:B9:79:98:E1:F0:89:2A:82:70:3B:67
echo ========================================
echo.
echo 📋 Next Steps:
echo 1. Look for keystore with matching SHA1
echo 2. Use correct keystore to sign AAB
echo 3. Upload to Google Play Console
echo.
echo 💡 If no matching keystore found:
echo - Contact Google Play Support
echo - Request keystore reset
echo - Or create new app
echo ========================================
pause
