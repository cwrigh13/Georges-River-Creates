@echo off
echo Starting deployment to GitHub repository...

REM Navigate to the project directory
cd /d "C:\Users\cwrig\OneDrive\Documents\IRL.URL\Georges-River-Creates"

REM Check if we're in the right directory
echo Current directory: %CD%

REM Initialize git repository if not already initialized
if not exist ".git" (
    echo Initializing git repository...
    git init
)

REM Add remote origin if not already added
git remote -v | findstr "origin" >nul
if errorlevel 1 (
    echo Adding remote origin...
    git remote add origin https://github.com/cwrigh13/Georges-River-Creates.git
)

REM Add all files to staging
echo Adding all files to staging...
git add .

REM Commit the changes
echo Committing changes...
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "timestamp=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec%"
git commit -m "Update Georges River Creates website - %timestamp%"

REM Push to main branch
echo Pushing to GitHub...
git branch -M main
git push -u origin main

echo.
echo Code pushed to GitHub repository successfully!
echo.
echo IMPORTANT: To enable GitHub Pages:
echo 1. Go to: https://github.com/cwrigh13/Georges-River-Creates/settings/pages
echo 2. Under "Source", select "Deploy from a branch"
echo 3. Select "main" branch and "/ (root)" folder
echo 4. Click "Save"
echo.
echo Once GitHub Pages is enabled, your website will be available at:
echo https://cwrigh13.github.io/Georges-River-Creates/
echo.
pause