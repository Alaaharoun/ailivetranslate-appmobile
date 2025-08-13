@echo off
echo ========================================
echo Fixing Git Repository for AI Live Translate
echo ========================================

echo.
echo 1. Checking Git status...
git status

echo.
echo 2. Adding all files...
git add .

echo.
echo 3. Committing changes...
git commit -m "Complete WebView project with all files"

echo.
echo 4. Setting remote origin...
git remote set-url origin https://github.com/Alaaharoun/ailivetranslate-appmobile.git

echo.
echo 5. Pushing to GitHub...
git push -u origin main --force

echo.
echo ========================================
echo Done! Check GitHub repository now.
echo ========================================
pause
