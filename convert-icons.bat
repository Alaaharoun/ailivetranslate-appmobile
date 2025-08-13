@echo off
echo ========================================
echo Converting SVG Icons to PNG
echo ========================================

echo.
echo Step 1: Install required tools...
npm install -g svg2png

echo.
echo Step 2: Convert icon-512.svg to PNG...
svg2png public/icon-512.svg public/icon-512.png --width=512 --height=512

echo.
echo Step 3: Convert icon-192.svg to PNG...
svg2png public/icon-192.svg public/icon-192.png --width=192 --height=192

echo.
echo Step 4: Convert screenshots...
svg2png public/screenshot-1.svg public/screenshot-1.png --width=1280 --height=720
svg2png public/screenshot-2.svg public/screenshot-2.png --width=750 --height=1334

echo.
echo ========================================
echo Icons converted successfully!
echo Check the public folder for PNG files
echo ========================================
pause
