@echo off
title PVR Pacific - Cinema Ticket Booking Availability Module (XAMPP MySQL Integrated)
color 0E

echo ========================================================
echo    PVR PACIFIC CINEMAS - AVAILABILITY MODULE & PBL LAB
echo    Graphic Era University - DBMS & OS PBL
echo ========================================================
echo.
echo [1] Connecting to XAMPP MySQL on port 3306...
echo [2] Launching local backend server on http://localhost:3000...
echo [3] Opening frontend in your default browser...
echo.
echo * TIP: Make sure MySQL is started (green) in XAMPP Control Panel!
echo * When you enter movies or bookings in the frontend, they will
echo   appear directly in phpMyAdmin at: http://localhost/phpmyadmin
echo ========================================================
echo.

timeout /t 1 >nul
start "" "http://localhost:3000"
node server.js

pause
