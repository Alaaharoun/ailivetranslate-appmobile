@echo off
echo ========================================
echo Fix Iframe Issues for PWA Builder
echo ========================================

echo.
echo Step 1: Add all changes...
git add .

echo.
echo Step 2: Commit iframe fixes...
git commit -m "Fix iframe issues - use iframe instead of redirect to solve HTTPS problems"

echo.
echo Step 3: Push to GitHub...
git push origin main

echo.
echo ========================================
echo Iframe fixes applied!
echo ========================================
echo.
echo 📋 Changes made:
echo ✅ Changed from redirect to iframe
echo ✅ Updated X-Frame-Options to ALLOWALL
echo ✅ Updated Permissions-Policy for camera/microphone
echo ✅ Updated Content-Security-Policy for iframe
echo.
echo 🔄 Wait for Netlify deployment (2-3 minutes)
echo 🔍 Then test PWA Builder again
echo.
echo 💡 This should solve the HTTPS issues!
echo ========================================
pause
