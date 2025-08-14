@echo off
echo ========================================
echo Fix Package Name for Google Play
echo ========================================

echo.
echo Step 1: Add all changes...
git add .

echo.
echo Step 2: Commit package name fix...
git commit -m "Fix package name to com.ailivetranslate.app for Google Play"

echo.
echo Step 3: Push to GitHub...
git push origin main

echo.
echo ========================================
echo Package name fixed successfully!
echo ========================================
echo.
echo 📋 Changes made:
echo ✅ Package name: com.ailivetranslate.app
echo ✅ Manifest ID: com.ailivetranslate.app
echo ✅ Version: 6.8.00
echo ✅ Version Code: 2
echo.
echo 🔄 Wait for Netlify deployment (2-3 minutes)
echo 📱 Generate new AAB from PWA Builder
echo 🚀 Upload new AAB to Google Play Console
echo ========================================
echo.
echo 💡 Next Steps:
echo 1. Go to PWA Builder
echo 2. Package for Stores > Android
echo 3. Download new AAB
echo 4. Sign with correct keystore
echo 5. Upload to Google Play Console
echo ========================================
pause
