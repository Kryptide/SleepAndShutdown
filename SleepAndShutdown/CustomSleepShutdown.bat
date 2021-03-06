@echo off
color 0a
title Custom Timed Shutdown + Sleep Monitors 

:::                                   _____          _                                           
:::                                  / ____|        | |                                          
:::                                 | |    _   _ ___| |_ ___  _ __ ___                           
:::                                 | |   | | | / __| __/ _ \| '_ ` _ \                          
:::                                 | |___| |_| \__ \ || (_) | | | | | |                         
:::            _______ _             \_____\__,_|___/\__\___/|_| |_| |_|  _                      
:::           |__   __(_)                  | |  / ____| |         | |    | |                     
:::              | |   _ _ __ ___   ___  __| | | (___ | |__  _   _| |_ __| | _____      ___ __   
:::              | |  | | '_ ` _ \ / _ \/ _` |  \___ \| '_ \| | | | __/ _` |/ _ \ \ /\ / / '_ \  
:::              | |  | | | | | | |  __/ (_| |  ____) | | | | |_| | || (_| | (_) \ V  V /| | | | 
:::              |_|  |_|_|_|_|_|_|\___|\__,_| |_____/|_| |_|\__,_|\__\__,_|\___/ \_/\_/ |_| |_| 
:::               _     / ____| |                 |  \/  |           (_) |                       
:::             _| |_  | (___ | | ___  ___ _ __   | \  / | ___  _ __  _| |_ ___  _ __ ___        
:::            |_   _|  \___ \| |/ _ \/ _ \ '_ \  | |\/| |/ _ \| '_ \| | __/ _ \| '__/ __|       
:::              |_|    ____) | |  __/  __/ |_) | | |  | | (_) | | | | | || (_) | |  \__ \       
:::                    |_____/|_|\___|\___| .__/  |_|  |_|\___/|_| |_|_|\__\___/|_|  |___/       
:::                                       | |                                                    
:::                                       |_|                                                    
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
:::                                  -----------------------------------
:::                                  |         TIME REFERENCES:        |
:::                                  |    01 Minute  = 60   Seconds    |
:::                                  |    05 Minutes = 300  Seconds    |
:::                                  |    10 Minutes = 600  Seconds    |
:::                                  |    15 Minutes = 900  Seconds    |
:::                                  |    30 Minutes = 1800 Seconds    |
:::                                  |    45 Minutes = 2700 Seconds    |
:::                                  -----------------------------------
set /P TOValue= Enter Shutdown Delay (in Seconds): 
:::  
start SleepMonitors.bat
timeout /t %TOValue% /nobreak
shutdown /s /f /t 0