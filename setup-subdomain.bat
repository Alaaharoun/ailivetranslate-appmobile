@echo off
echo ========================================
echo Setup Subdomain for WebView
echo ========================================

echo.
echo 📋 Steps to setup subdomain:
echo.
echo 1. DNS Configuration:
echo    Add CNAME record:
echo    app.ailivetranslate.net → ailivetranslate-appmobile.netlify.app
echo.
echo 2. Netlify Configuration:
echo    - Go to Netlify Dashboard
echo    - Domain Management
echo    - Add Custom Domain: app.ailivetranslate.net
echo.
echo 3. Update PWA Builder:
echo    - Use: https://app.ailivetranslate.net
echo    - This should solve HTTPS issues
echo.
echo 4. Test the new domain:
echo    - Open: https://app.ailivetranslate.net
echo    - Check PWA Builder with new URL
echo.
echo ========================================
echo Benefits of subdomain approach:
echo ✅ No iframe errors
echo ✅ PWA Builder works
echo ✅ APK/AAB generation
echo ✅ User-friendly URL
echo ✅ Same brand identity
echo ========================================
pause
