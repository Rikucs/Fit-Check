# PowerShell deployment script for Fit Check PWA

Write-Host "Building the app..." -ForegroundColor Green
npm run build

if ($LASTEXITCODE -eq 0) {
    Write-Host "Build successful! The app is ready for deployment." -ForegroundColor Green
    Write-Host ""
    Write-Host "PWA Features Enabled:" -ForegroundColor Yellow
    Write-Host "✓ Service Worker for offline functionality"
    Write-Host "✓ Web App Manifest for installability"
    Write-Host "✓ App icons and splash screens"
    Write-Host "✓ Optimized for GitHub Pages"
    Write-Host ""
    Write-Host "To deploy to GitHub Pages:" -ForegroundColor Cyan
    Write-Host "1. Push your code to GitHub repository 'Fit-Check'"
    Write-Host "2. Go to repository Settings > Pages"
    Write-Host "3. Set source to 'GitHub Actions'"
    Write-Host "4. Add your GEMINI_API_KEY as a repository secret in Settings > Secrets"
    Write-Host "5. The workflow will automatically deploy when you push to main branch"
    Write-Host ""
    Write-Host "Your app will be available at: https://[username].github.io/Fit-Check/" -ForegroundColor Magenta
    Write-Host ""
    Write-Host "The dist folder contains all files ready for deployment." -ForegroundColor Green
} else {
    Write-Host "Build failed! Please check the errors above." -ForegroundColor Red
    exit 1
}