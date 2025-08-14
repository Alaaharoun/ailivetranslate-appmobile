@echo off
echo ========================================
echo Apply Custom Loading Screen
echo ========================================

echo.
echo Step 1: Add all changes...
git add .

echo.
echo Step 2: Commit loading screen changes...
git commit -m "Add custom loading screen with logo and white background option"

echo.
echo Step 3: Push to GitHub...
git push origin main

echo.
echo ========================================
echo Loading screen applied successfully!
echo ========================================
echo.
echo 📋 Changes made:
echo ✅ Custom loading screen with logo
echo ✅ 3-second delay before redirect
echo ✅ White background option available
echo ✅ Professional design with animations
echo.
echo 🔄 Wait for Netlify deployment (2-3 minutes)
echo 📱 Test the new loading screen
echo 🎨 Choose between colored or white background
echo ========================================
echo.
echo 💡 To use white background:
echo - Rename App-white.tsx to App.tsx
echo - Or modify App.tsx to use white classes
echo ========================================
pause
