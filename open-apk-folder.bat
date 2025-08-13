@echo off
echo ========================================
echo Open APK Files Location
echo ========================================

echo.
echo 📁 Opening APK files location...

if exist "app-release.apk" (
    echo ✅ Found main APK file!
    explorer "app-release.apk"
) else (
    echo ⚠️ Main APK not found in current directory
)

if exist "bubblewrap\android\app\build\outputs\apk\release\" (
    echo ✅ Found build folder!
    explorer "bubblewrap\android\app\build\outputs\apk\release\"
) else (
    echo ⚠️ Build folder not found
)

if exist "bubblewrap\" (
    echo ✅ Found bubblewrap folder!
    explorer "bubblewrap\"
) else (
    echo ⚠️ Bubblewrap folder not found
)

echo.
echo ========================================
echo Folders opened! Check for APK files.
echo ========================================
pause
