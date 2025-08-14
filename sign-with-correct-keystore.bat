@echo off
echo ========================================
echo Sign AAB with Correct Keystore
echo ========================================

echo.
echo Step 1: Check if keystore exists...
if not exist "my-release-key.keystore" (
    echo ❌ Keystore not found! Run copy-correct-keystore.bat first
    pause
    exit /b 1
)

echo ✅ Keystore found!

echo.
echo Step 2: Check if unsigned AAB exists...
if not exist "app-unsigned.aab" (
    echo ❌ No unsigned AAB found!
    echo.
    echo 📋 To get unsigned AAB:
    echo 1. Go to PWA Builder
    echo 2. Package for Stores > Android
    echo 3. Download unsigned AAB
    echo 4. Save as 'app-unsigned.aab' in this folder
    pause
    exit /b 1
)

echo ✅ Unsigned AAB found!

echo.
echo Step 3: Sign AAB with correct keystore...
echo.
echo 🔑 Keystore Details:
echo - Path: my-release-key.keystore
echo - Alias: my-key-alias
echo - SHA1: DF:39:24:17:81:56:18:B3:76:B9:79:98:E1:F0:89:2A:82:70:3B:67
echo.
echo 📝 You will be prompted for keystore password...

jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 -keystore "my-release-key.keystore" app-unsigned.aab my-key-alias

echo.
echo Step 4: Optimize AAB...
zipalign -v -p 4 app-unsigned.aab app-signed.aab

echo.
echo ========================================
echo ✅ AAB signed successfully!
echo ========================================
echo.
echo 📁 Files created:
echo ✅ app-signed.aab (Ready for Google Play)
echo.
echo 🚀 Next Steps:
echo 1. Upload app-signed.aab to Google Play Console
echo 2. Should work without signing errors
echo 3. App will update existing users
echo ========================================
pause
