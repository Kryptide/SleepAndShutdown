
                                             _____ _      ______ ______ _____               
                                            / ____| |    |  ____|  ____|  __ \              
                                           | (___ | |    | |__  | |__  | |__) |             
                                            \___ \| |    |  __| |  __| |  ___/              
                                            ____) | |____| |____| |____| |                  
                                           |_____/|______|______|______|_|                  
                                                        ( _ )                               
                                                        / _ \/\                             
                                                       | (_>  <                             
                                _____ _    _ _    _ ____\___/\/__   ______          ___   _ 
                               / ____| |  | | |  | |__   __|  __ \ / __ \ \        / / \ | |
                              | (___ | |__| | |  | |  | |  | |  | | |  | \ \  /\  / /|  \| |
                               \___ \|  __  | |  | |  | |  | |  | | |  | |\ \/  \/ / | . ` |
                               ____) | |  | | |__| |  | |  | |__| | |__| | \  /\  /  | |\  |
                              |_____/|_|  |_|\____/   |_|  |_____/ \____/   \/  \/   |_| \_|
                                                               
			        	               Created By: Kryptide
                                                               
INSTRUCTIONS:
================================================================================================
1. Download the SleepAndShutdown.zip.
2. Extract the SleepAndShutdown folder to wherever you would like.
3. Right-click on SleepAndShutdown.bat and select "Create Shortcut".
4. Drag-and-Drop that shortcut to your desktop or anywhere you would like.
5. Double (left) click your shortcut to open the Sleep & Shutdown menu and make your selection.
6. Profit!


USE-CASE:
================================================================================================
The reason I took the time to make this and share it was for two reasons. 
1. Having my PC run much longer than needed while waiting for downloads/installs.
2. Having the monitors light up my room at night while waiting for my screens to sleep.
At night when my computer is finishing up a download or installing something and I need to 
sleep I can rest assured knowing that I won't have to leave it on all night. Another 
thing was always having to turn on the blank screensaver at night when leaving my PC on 
as it was just too bright in my room. This works great too if you are downloading or 
installing something and you must leave for work or any other place where you don't 
have access to your computer. Most software will give you an estimated download/install 
time. Just set your shutdown delay accordingly and don't worry about your PC running more 
than it needs to.


CUSTOMIZING & ADDING ACTIONS:
================================================================================================
Customizing and adding times to these is pretty simple. To keep this as easy as I can
for everyone, option 7 in the SleepAndShutdown.bat menu will allow you to set your own
shutdown delay in seconds. If this is not enough and you need to add something else or
another option to the menu then that is also fairly easy. Here are a few snippets to 
help you out. 
**Please fill in your add-ins inside {}. Remember not to copy the {}'s.

*ADDING MENU ITEM*
Right-Click on SleepAndShutdown.bat and select ("Show More Options" if on Win11) -> Edit
echo {MENU ITEM #}) {ADD OPTION DESCRIPTION}
(EXAMPLE: echo 10) Add delay to Monitor Sleep)

*ADDING THE ACTION TO YOUR CORRESPONDING MENU ITEM*
if "%web%"=="{MENU ITEM #}" start {YOUR ACTION}
(EXAMPLE: if "%web%"=="10" start DelayMonitorSleep.bat)


NIRCMD:
================================================================================================
NirCMD is a great tool which is included with this .zip. 
Check out the website for a full list of commands that you can use with it:
https://www.nirsoft.net/utils/nircmd.html
I did not create, nor do I take any credit for this tool. It's a simple command line tool 
which is used to put the monitors to sleep. This action can be done using a written 
batch which I will leave at the bottom of this README if you prefer not to use NirCMD. 
It's the simplest implementation for putting the monitors to sleep immediately.


PRIVACY & SECURITY:
================================================================================================
Batch files can sometimes get a bad rap since they've been used/are used by bad actors
with malicious intent. None of the .bat files in this .zip are malicious in any way.
All .bat files are viewable and editable, and I urge you to please open each one if you
feel any apprehension about using these scripts. You will see that every line is there
to make the goal of these scripts work and save you some time.


TROUBLESHOOTING:
================================================================================================
*If your monitor(s) do not go into sleep/standby mode please check your video cable(s).
This is usually due to an odd HDMI/DP cable(s) or adapter(s).
Remove any adapters or DP-to-HDMI / HDMI-to-DP cables as this can also be the issue.
Best practice to make this work is to use regular HDMI-to-HDMI or DP-to-DP cable(s).

*If the scripts are flat out not working for you then it may be your OS.
These scripts were written in Windows 11 and have been tested as working in Windows 10.
If you're running anything below Windows 10 I cannot guarantee these will work as they
haven't been tested outside 10 & 11.

*Remember that ALL FILES except for the shortcut you make for SleepAndShutdown.bat MUST
STAY inside the SleepAndShutdown folder. It will break the scripts if anything is moved,
renamed, or deleted.


MONITOR SLEEP ALTERNATE METHOD WITHOUT USING NIRCMD:
================================================================================================
Please note the caveats to using this method as opposed to NirCMD.
Your monitor(s) will not go to sleep as quickly.
This alternate method does these things:
Changes your Power Plan default setting so that your monitors go to sleep after 1 minute.
Immediately after running the script a blank screensaver is applied for 1 minute.
Your screen(s) will still be on with a backlight.
After 1 minute has passed the backlight(s) will go off and your monitor(s) will sleep.
Once you move your mouse or press a key to wake them up the Power Plan is then changed
to the provided minutes in the script.
The script sets your "Time before monitor sleeps" to 15 minutes. You will need to change
the two "15" in the lower half of the scripts if 15 minutes isn't what you want your
default Monitor Screen Sleep settings to be.

To change to this method: 
right-click on SleepMonitors.bat and select ("Show More Options" if on Win11) -> Edit
Select everything (CTRL+A) and delete it. 
Copy the following script:

@echo off

%windir%\System32\powercfg.exe -Change -monitor-timeout-dc 1

%windir%\System32\powercfg.exe -Change -monitor-timeout-ac 1

START /MIN /WAIT %windir%\System32\scrnsave.scr -s

%windir%\System32\powercfg.exe -Change -monitor-timeout-dc 15

%windir%\System32\powercfg.exe -Change -monitor-timeout-ac 15

exit

Now paste that into the SleepMonitors.bat file.
Please note that the top two lines end in "1"
These 1's dictate how long it takes for the screen to transition from the backlit blank screensaver
to actual standby/sleep mode. 1 = 1 Minute
Please note that the bottom two lines end in "15".
These 15's dictate the Power Plans default "Time before the monitor(s) go to sleep"
This means that when the PC is idle for 15 minutes the monitor(s) will go to sleep/standby.
If you want that to be a different time please change the 15's to however many minutes you would
like the monitor(s) to sleep on their own. Remember that if you change one of the 15's to change the
other one to match. 


ENJOY:
================================================================================================
Thanks for checking this out! I hope it's as helpful to you as it is to me! 

                                 
