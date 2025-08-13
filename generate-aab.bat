@echo off
echo ========================================
echo Generate AAB for AI Live Translate
echo ========================================

echo.
echo Step 1: Install Bubblewrap CLI...
npm install -g @bubblewrap/cli

echo.
echo Step 2: Initialize Bubblewrap project...
bubblewrap init --manifest https://ailivetranslate-appmobile.netlify.app/manifest.json

echo.
echo Step 3: Build AAB...
bubblewrap build --aab

echo.
echo ========================================
echo AAB generated successfully!
echo Check the 'app-release.aab' file
echo ========================================
pause
