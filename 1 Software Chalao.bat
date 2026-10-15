@echo off
title Cylinder OCR - Software
cd /d "C:\CT Garud OM Camera 0"
if not exist "venv\Scripts\python.exe" (
    echo [X] Software nahi mila: C:\CT Garud OM Camera 0
    pause
    exit /b
)
findstr /B /C:"test_mode: true" main_config.yaml >nul && echo *** TEST MODE CHALU HAI (webcam + PLC simulation) *** || echo Normal mode (Hikrobot camera + asli PLC)
echo Software khul raha hai, 30-60 second lag sakte hain...
"venv\Scripts\python.exe" main_gui_v2.py
echo.
echo Software band ho gaya.
pause
