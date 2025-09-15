@echo off
echo Running GitHub deployment...
powershell -ExecutionPolicy Bypass -File "deploy_to_github.ps1"
pause
