@echo off
echo ========================================
echo Generate APK for AI Live Translate
echo ========================================

echo.
echo Step 1: Install Bubblewrap CLI...
npm install -g @bubblewrap/cli

echo.
echo Step 2: Initialize Bubblewrap project...
bubblewrap init --manifest https://ailivetranslate-appmobile.netlify.app/manifest.json

echo.
echo Step 3: Build APK...
bubblewrap build

echo.
echo ========================================
echo APK generated successfully!
echo ========================================
echo.
echo 📁 File Locations:
echo.
echo ✅ Main APK: %CD%\app-release.apk
echo ✅ Build Folder: %CD%\bubblewrap\android\app\build\outputs\apk\release\
echo ✅ Bubblewrap Folder: %CD%\bubblewrap\
echo.
echo 📱 APK is ready for installation!
echo ========================================
pause
