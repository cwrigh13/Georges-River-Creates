# PowerShell script to deploy to GitHub
Write-Host "Starting deployment to GitHub repository..." -ForegroundColor Green

# Navigate to the project directory
Set-Location "C:\Users\cwrig\OneDrive\Documents\IRL.URL\Georges-River-Creates"

# Check if we're in the right directory
Write-Host "Current directory: $(Get-Location)" -ForegroundColor Yellow

# Initialize git repository if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
}

# Add remote origin if not already added
$remotes = git remote -v
if ($remotes -notmatch "origin") {
    Write-Host "Adding remote origin..." -ForegroundColor Yellow
    git remote add origin https://github.com/cwrigh13/Georges-River-Creates.git
}

# Add all files to staging
Write-Host "Adding all files to staging..." -ForegroundColor Yellow
git add .

# Commit the changes
Write-Host "Committing changes..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "Update Georges River Creates website - $timestamp"

# Push to main branch
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git branch -M main
git push -u origin main

Write-Host ""
Write-Host "Code pushed to GitHub repository successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "IMPORTANT: To enable GitHub Pages:" -ForegroundColor Red
Write-Host "1. Go to: https://github.com/cwrigh13/Georges-River-Creates/settings/pages" -ForegroundColor White
Write-Host "2. Under 'Source', select 'Deploy from a branch'" -ForegroundColor White
Write-Host "3. Select 'main' branch and '/ (root)' folder" -ForegroundColor White
Write-Host "4. Click 'Save'" -ForegroundColor White
Write-Host ""
Write-Host "Once GitHub Pages is enabled, your website will be available at:" -ForegroundColor Cyan
Write-Host "https://cwrigh13.github.io/Georges-River-Creates/" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
