@echo off
setlocal enabledelayedexpansion
title https://github.com/spicebag
color 6

echo Just a headsup, if it says something can't be found, it's because you don't have it, dont worry.
echo Press Any Key to optimize FiveM by deleting the cache and closing down some resource intensive 
pause >nul
cls

echo Clearing FiveM Cache...
TIMEOUT /T 1
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\browser"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashometry"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\launcher_skip_mtl2"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\session"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\plugins"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\mods"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\caches.XML"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\adhesive.dll"



echo Optimizing FiveM...
TIMEOUT /T 1
taskkill /f /im GTAVLauncher.exe
wmic process where name="FiveM.exe" CALL setpriority 128
wmic process where name="FiveM_b2189_GTAProcess.exe" CALL setpriority 128
taskkill /f /im wmpnetwk.exe.exe
taskkill /f /im OneDrive.exe
taskkill /f /im speedfan.exe
taskkill /f /im Teamviewer.exe
taskkill /f /im TeamViewer_Service.exe
taskkill /f /im opera.exe
taskkill /f /im java.exed
taskkill /f /im Cortana.exe
taskkill /f /im Chrome.exe
taskkill /f /im Mcshield.exe
taskkill /f /im mfeann.exe

echo 
echo Press Any Key to change your power-plan to increase performance, close the program if you do not want it. (Highly suggested for laptops, and Recommended for desktops.)
pause >nul
cls

echo Changing Power Plan. . .
TIMEOUT /T 1
powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

TIMEOUT /T 1
color e
echo Optimized FiveM and Cleared your cache, this script was created by spicebag, concept expanded by Spicebag, original concept by AYZNN.
