@echo off
echo ========================================
echo Quick Icon Fix for PWA Builder
echo ========================================

echo.
echo Step 1: Copy existing icons for maskable versions...
copy "public\icon-192.png" "public\icon-192-maskable.png"
copy "public\icon-512.png" "public\icon-512-maskable.png"

echo.
echo Step 2: Add all files to git...
git add .

echo.
echo Step 3: Commit changes...
git commit -m "Fix PWA Builder icon issues - add separate maskable icons"

echo.
echo Step 4: Push to GitHub...
git push origin main

echo.
echo ========================================
echo Icons fixed! Check PWA Builder again.
echo ========================================
pause
