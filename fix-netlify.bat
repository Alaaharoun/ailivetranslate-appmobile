@echo off
echo ========================================
echo Fixing Netlify Configuration
echo ========================================

echo.
echo Step 1: Adding fixed netlify.toml...
git add netlify.toml

echo.
echo Step 2: Committing the fix...
git commit -m "Fix netlify.toml configuration - resolve headers redefinition error"

echo.
echo Step 3: Pushing to GitHub...
git push origin main

echo.
echo ========================================
echo Fix applied! Netlify should build successfully now.
echo ========================================
pause
