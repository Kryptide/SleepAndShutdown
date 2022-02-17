@echo off
color 0a
title Sleep or Shutdown
:home
cls

:::                                        _____ _      ______ ______ _____               
:::                                       / ____| |    |  ____|  ____|  __ \              
:::                                      | (___ | |    | |__  | |__  | |__) |             
:::                                       \___ \| |    |  __| |  __| |  ___/              
:::                                       ____) | |____| |____| |____| |                  
:::                                      |_____/|______|______|______|_|                  
:::                                                   ( _ )                               
:::                                                   / _ \/\                             
:::                                                  | (_>  <                             
:::                           _____ _    _ _    _ ____\___/\/__   ______          ___   _ 
:::                          / ____| |  | | |  | |__   __|  __ \ / __ \ \        / / \ | |
:::                         | (___ | |__| | |  | |  | |  | |  | | |  | \ \  /\  / /|  \| |
:::                          \___ \|  __  | |  | |  | |  | |  | | |  | |\ \/  \/ / | . ` |
:::                          ____) | |  | | |__| |  | |  | |__| | |__| | \  /\  /  | |\  |
:::                         |_____/|_|  |_|\____/   |_|  |_____/ \____/   \/  \/   |_| \_|
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

echo =======================================                            Created By: Kryptide
echo Please Make a Selection:
echo =======================================
echo 0.) Sleep Monitors Without Shutdown
echo 1.) 1HR Timed Shutdown + Sleep Monitors
echo 2.) 2HR Timed Shutdown + Sleep Monitors
echo 3.) 3HR Timed Shutdown + Sleep Monitors
echo 4.) 4HR Timed Shutdown + Sleep Monitors
echo 5.) 5HR Timed Shutdown + Sleep Monitors
echo 6.) 6HR Timed Shutdown + Sleep Monitors
echo 7.) Set Timed Shutdown + Sleep Monitors
echo 8.) README
echo 9.) Exit
echo =======================================
set mypath=%cd%
set /p web=Choose an Option:
if "%web%"=="0" start SleepMonitors.bat
if "%web%"=="0" exit
if "%web%"=="1" start 1HRSleepShutdown.bat
if "%web%"=="1" exit
if "%web%"=="2" start 2HRSleepShutdown.bat
if "%web%"=="2" exit
if "%web%"=="3" start 3HRSleepShutdown.bat
if "%web%"=="3" exit
if "%web%"=="4" start 4HRSleepShutdown.bat
if "%web%"=="4" exit
if "%web%"=="5" start 5HRSleepShutdown.bat
if "%web%"=="5" exit
if "%web%"=="6" start 6HRSleepShutdown.bat
if "%web%"=="6" exit
if "%web%"=="7" start CustomSleepShutdown.bat
if "%web%"=="7" exit
if "%web%"=="8" start README.txt
if "%web%"=="9" exit