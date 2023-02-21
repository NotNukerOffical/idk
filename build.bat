@echo off

git --version 2>&1>nul
if %errorlevel% == 9009 (
    echo git is either not installed or not added to path! You can install it here https://git-scm.com/download/win
    pause
    exit
)

py -3.10 -m pip uninstall -r interferences.txt
py -3.10 -m pip install --force-reinstall -r requirements.txt

cls

if exist build rmdir /s /q build
py -3.10 builder.py

pause
