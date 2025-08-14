@echo off
echo ========================================
echo Copy Logo to Source Directory
echo ========================================

echo.
echo Step 1: Copy logo to src directory...
copy "Logo.png" "src\Logo.png"

echo.
echo Step 2: Verify logo copied...
if exist "src\Logo.png" (
    echo ✅ Logo copied successfully!
    echo.
    echo Step 3: Add all changes...
    git add .
    echo.
    echo Step 4: Commit logo changes...
    git commit -m "Add real logo to loading screen"
    echo.
    echo Step 5: Push to GitHub...
    git push origin main
    echo.
    echo ========================================
    echo Logo applied successfully!
    echo ========================================
    echo.
    echo 📋 Changes made:
    echo ✅ Real logo from Logo.png
    echo ✅ Proper sizing and styling
    echo ✅ Professional appearance
    echo.
    echo 🔄 Wait for Netlify deployment (2-3 minutes)
    echo 📱 Test the new logo in loading screen
    echo ========================================
) else (
    echo ❌ Failed to copy logo!
    echo Please check if Logo.png exists in the current directory.
)

pause
