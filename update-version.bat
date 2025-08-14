@echo off
echo ========================================
echo Update Version for Google Play
echo ========================================

echo.
echo Step 1: Add all changes...
git add .

echo.
echo Step 2: Commit version update...
git commit -m "Update version to 6.8.00 and version_code to 2 for Google Play"

echo.
echo Step 3: Push to GitHub...
git push origin main

echo.
echo ========================================
echo Version updated successfully!
echo ========================================
echo.
echo 📋 Changes made:
echo ✅ Version: 6.8.00
echo ✅ Version Code: 2
echo ✅ Package Name: ai-live-translate-mobile
echo.
echo 🔄 Wait for Netlify deployment (2-3 minutes)
echo 📱 Then generate new AAB from PWA Builder
echo 🚀 Upload new AAB to Google Play Console
echo ========================================
pause
