@echo off
echo ========================================
echo Fix HTTPS Issues for PWA Builder
echo ========================================

echo.
echo Step 1: Add all changes...
git add .

echo.
echo Step 2: Commit HTTPS fixes...
git commit -m "Fix HTTPS issues - update security headers and redirect logic"

echo.
echo Step 3: Push to GitHub...
git push origin main

echo.
echo ========================================
echo HTTPS fixes applied!
echo ========================================
echo.
echo 📋 Changes made:
echo ✅ Updated redirect logic with HTTPS check
echo ✅ Enhanced security headers in netlify.toml
echo ✅ Added Content Security Policy
echo ✅ Improved caching headers
echo.
echo 🔄 Wait for Netlify deployment (2-3 minutes)
echo 🔍 Then test PWA Builder again
echo ========================================
pause
