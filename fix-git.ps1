Write-Host "========================================" -ForegroundColor Green
Write-Host "Fixing Git Repository for AI Live Translate" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

Write-Host ""
Write-Host "1. Checking Git status..." -ForegroundColor Yellow
git status

Write-Host ""
Write-Host "2. Adding all files..." -ForegroundColor Yellow
git add .

Write-Host ""
Write-Host "3. Committing changes..." -ForegroundColor Yellow
git commit -m "Complete WebView project with all files"

Write-Host ""
Write-Host "4. Setting remote origin..." -ForegroundColor Yellow
git remote set-url origin https://github.com/Alaaharoun/ailivetranslate-appmobile.git

Write-Host ""
Write-Host "5. Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin main --force

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "Done! Check GitHub repository now." -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

Read-Host "Press Enter to continue"
