@echo off
echo ========================================
echo Simple Git Fix for AI Live Translate
echo ========================================

echo.
echo Step 1: Remove old Git folder...
if exist .git rmdir /s /q .git

echo.
echo Step 2: Initialize new Git repository...
git init

echo.
echo Step 3: Add all files...
git add .

echo.
echo Step 4: Make first commit...
git commit -m "Initial commit: AI Live Translate Mobile WebView"

echo.
echo Step 5: Set main branch...
git branch -M main

echo.
echo Step 6: Add remote origin...
git remote add origin https://github.com/Alaaharoun/ailivetranslate-appmobile.git

echo.
echo Step 7: Push to GitHub...
git push -u origin main --force

echo.
echo ========================================
echo Done! Check GitHub now:
echo https://github.com/Alaaharoun/ailivetranslate-appmobile
echo ========================================
pause
