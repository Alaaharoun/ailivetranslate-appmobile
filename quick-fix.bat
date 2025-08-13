@echo off
echo ========================================
echo Quick Fix for Netlify Build Error
echo ========================================

echo.
echo Step 1: Check current git status...
git status

echo.
echo Step 2: Add all changes...
git add .

echo.
echo Step 3: Commit changes...
git commit -m "Fix netlify.toml configuration - resolve headers redefinition"

echo.
echo Step 4: Push to GitHub...
git push origin main

echo.
echo ========================================
echo Fix applied! Check GitHub and Netlify now.
echo ========================================
pause
