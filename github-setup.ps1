# GitHub Deployment Guide for Fit Check PWA

Write-Host "🚀 Fit Check PWA - GitHub Deployment Setup" -ForegroundColor Green
Write-Host "===========================================" -ForegroundColor Green
Write-Host ""

Write-Host "✅ Local Git repository has been initialized and committed!" -ForegroundColor Green
Write-Host ""

Write-Host "📋 Next Steps - Follow these EXACT steps:" -ForegroundColor Yellow
Write-Host ""

Write-Host "1. CREATE GITHUB REPOSITORY:" -ForegroundColor Cyan
Write-Host "   • Go to https://github.com and click 'New repository'"
Write-Host "   • Repository name: Fit-Check (exactly as shown)"
Write-Host "   • Set to Public (required for free GitHub Pages)"
Write-Host "   • Do NOT initialize with README, .gitignore, or license"
Write-Host "   • Click 'Create repository'"
Write-Host ""

Write-Host "2. CONNECT LOCAL REPO TO GITHUB:" -ForegroundColor Cyan
Write-Host "   Run these commands in PowerShell:"
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/Fit-Check.git" -ForegroundColor White
Write-Host "   git branch -M main" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White
Write-Host ""

Write-Host "3. SET UP GITHUB PAGES:" -ForegroundColor Cyan
Write-Host "   • Go to your repository on GitHub"
Write-Host "   • Click Settings tab"
Write-Host "   • Scroll to Pages section (left sidebar)"
Write-Host "   • Under 'Source', select 'GitHub Actions'"
Write-Host ""

Write-Host "4. ADD API KEY SECRET:" -ForegroundColor Cyan
Write-Host "   • In repository Settings"
Write-Host "   • Go to 'Secrets and variables' > 'Actions'"
Write-Host "   • Click 'New repository secret'"
Write-Host "   • Name: GEMINI_API_KEY"
Write-Host "   • Value: AIzaSyCoChkKYghjK1gUxfWoa23zLiOY1sHlJH4"
Write-Host "   • Click 'Add secret'"
Write-Host ""

Write-Host "5. TRIGGER DEPLOYMENT:" -ForegroundColor Cyan
Write-Host "   • The GitHub Action will automatically run when you push to main"
Write-Host "   • Check the 'Actions' tab to see deployment progress"
Write-Host "   • Once complete, your app will be live at:"
Write-Host "   https://YOUR_USERNAME.github.io/Fit-Check/" -ForegroundColor Magenta
Write-Host ""

Write-Host "🔧 Quick Commands (run after creating GitHub repo):" -ForegroundColor Yellow
Write-Host "Replace YOUR_USERNAME with your actual GitHub username:" -ForegroundColor White
Write-Host ""

$username = Read-Host "Enter your GitHub username (or press Enter to skip)"
if ($username) {
    Write-Host ""
    Write-Host "📋 Copy and run these commands:" -ForegroundColor Green
    Write-Host "git remote add origin https://github.com/$username/Fit-Check.git" -ForegroundColor White
    Write-Host "git branch -M main" -ForegroundColor White  
    Write-Host "git push -u origin main" -ForegroundColor White
    Write-Host ""
    Write-Host "🌐 Your app will be available at:" -ForegroundColor Magenta
    Write-Host "https://$username.github.io/Fit-Check/" -ForegroundColor Magenta
} else {
    Write-Host "git remote add origin https://github.com/YOUR_USERNAME/Fit-Check.git" -ForegroundColor White
    Write-Host "git branch -M main" -ForegroundColor White
    Write-Host "git push -u origin main" -ForegroundColor White
}

Write-Host ""
Write-Host "⚡ PWA Features Ready:" -ForegroundColor Green
Write-Host "   ✓ Installable on mobile and desktop"
Write-Host "   ✓ Offline functionality"  
Write-Host "   ✓ Service worker caching"
Write-Host "   ✓ App manifest configured"
Write-Host ""
Write-Host "Happy coding! 🎉" -ForegroundColor Green