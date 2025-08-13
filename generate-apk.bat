@echo off
echo ========================================
echo Generate APK for AI Live Translate
echo ========================================

echo.
echo Step 1: Install Bubblewrap CLI...
npm install -g @bubblewrap/cli

echo.
echo Step 2: Initialize Bubblewrap project...
bubblewrap init --manifest https://app.ailivetranslate.net/manifest.json

echo.
echo Step 3: Build APK...
bubblewrap build

echo.
echo ========================================
echo APK generated successfully!
echo Check the 'app-release.apk' file
echo ========================================
pause
