@echo off
echo ========================================
echo Copy Correct Keystore for Google Play
echo ========================================

echo.
echo Step 1: Copy keystore to current project...
copy "C:\LiveTranslateproject\android\app\my-release-key.keystore" "my-release-key.keystore"

echo.
echo Step 2: Verify keystore copied...
if exist "my-release-key.keystore" (
    echo ✅ Keystore copied successfully!
    echo.
    echo Step 3: Verify fingerprint...
    keytool -list -v -keystore "my-release-key.keystore"
) else (
    echo ❌ Failed to copy keystore
)

echo.
echo ========================================
echo Keystore Details:
echo ✅ Path: my-release-key.keystore
echo ✅ Alias: my-key-alias
echo ✅ SHA1: DF:39:24:17:81:56:18:B3:76:B9:79:98:E1:F0:89:2A:82:70:3B:67
echo ========================================
echo.
echo 📋 Next Steps:
echo 1. Sign AAB with this keystore
echo 2. Upload to Google Play Console
echo 3. Should work without errors
echo ========================================
pause
