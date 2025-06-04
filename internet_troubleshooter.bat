@echo off
:: Internet Troubleshooter - by Codexual
:: Main: Basic ipconfig/netsh, Browsers, Advanced Tools

setlocal enabledelayedexpansion

:main_menu
cls
echo ================================================
echo           INTERNET TROUBLESHOOTER TOOL
echo                  by Codexual
echo ================================================
echo.
echo 1. Basic Network Troubleshooting
echo 2. Browser Reset Tools (WARNING: Data Loss)
echo 3. Advanced Network Tools (For Advanced Users)
echo 4. Exit
echo.
set /p mainchoice="Select an option (1-4): "
if "%mainchoice%"=="1" goto basic_network
if "%mainchoice%"=="2" goto browser_menu
if "%mainchoice%"=="3" goto advanced_network
if "%mainchoice%"=="4" exit
goto main_menu

:basic_network
cls
echo ================================================
echo         BASIC NETWORK TROUBLESHOOTING
echo ================================================
echo 1. ipconfig /release      - Release IPv4 address
echo 2. ipconfig /renew        - Renew IPv4 address
echo 3. ipconfig /flushdns     - Clear DNS cache
echo 4. netsh winsock reset    - Reset Windows Sockets Catalog
echo 5. netsh int ip reset     - Reset TCP/IP stack
echo 6. Run ALL basic commands
echo 7. Back to Main Menu
echo.
set /p netchoice="Select an option (1-7): "

if "%netchoice%"=="1" goto release
if "%netchoice%"=="2" goto renew
if "%netchoice%"=="3" goto flushdns
if "%netchoice%"=="4" goto winsock
if "%netchoice%"=="5" goto ipreset
if "%netchoice%"=="6" goto allbasic
if "%netchoice%"=="7" goto main_menu
goto basic_network

:release
cls
echo ipconfig /release
echo -----------------
echo Releases the current IPv4 address assigned to your computer.
echo Use this if you need to disconnect from the network or before renewing IP.
pause
ipconfig /release
echo Done.
pause
goto basic_network

:renew
cls
echo ipconfig /renew
echo ----------------
echo Requests a new IPv4 address from the DHCP server.
echo Use this after releasing your IP or if you're having trouble reconnecting.
pause
ipconfig /renew
echo Done.
pause
goto basic_network

:flushdns
cls
echo ipconfig /flushdns
echo ------------------
echo Clears the local DNS resolver cache.
echo Use this to fix website not found errors or DNS issues.
pause
ipconfig /flushdns
echo Done.
pause
goto basic_network

:winsock
cls
echo netsh winsock reset
echo --------------------
echo Resets the Windows Sockets Catalog to its default state.
echo Fixes socket errors and connectivity issues caused by corruption/malware.
pause
netsh winsock reset
echo Done.
pause
goto basic_network

:ipreset
cls
echo netsh int ip reset
echo ------------------
echo Resets the TCP/IP stack to default settings.
echo Useful for persistent IP configuration problems.
pause
netsh int ip reset
echo Done.
pause
goto basic_network

:allbasic
cls
echo Running all basic network troubleshooting commands:
echo - netsh winsock reset
echo - netsh int ip reset
echo - ipconfig /release
echo - ipconfig /renew
echo - ipconfig /flushdns
pause
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
echo All commands completed.
pause
goto basic_network

:browser_menu
cls
echo ================================================
echo            BROWSER RESET TOOLS
echo ================================================
echo WARNING: These actions will PERMANENTLY DELETE
echo all data (passwords, bookmarks, cookies, etc.)
echo for the selected browser.
echo.
echo 1. Reset Google Chrome
echo 2. Reset Microsoft Edge
echo 3. Reset Brave
echo 4. Reset Opera GX
echo 5. Reset Firefox
echo 6. Back to Main Menu
echo.
set /p browserchoice="Select an option (1-6): "

if "%browserchoice%"=="1" goto reset_chrome
if "%browserchoice%"=="2" goto reset_edge
if "%browserchoice%"=="3" goto reset_brave
if "%browserchoice%"=="4" goto reset_opera
if "%browserchoice%"=="5" goto reset_firefox
if "%browserchoice%"=="6" goto main_menu
goto browser_menu

:reset_chrome
cls
echo ================================================
echo RESETTING GOOGLE CHROME
echo ================================================
echo WARNING: This will DELETE ALL Chrome data:
echo - Saved passwords, bookmarks, cookies, autofill, etc.
pause
taskkill /f /im chrome.exe
rmdir /s /q "%LOCALAPPDATA%\Google\Chrome\User Data"
ipconfig /flushdns
echo Chrome data reset complete.
pause
goto browser_menu

:reset_edge
cls
echo ================================================
echo RESETTING MICROSOFT EDGE
echo ================================================
echo WARNING: This will DELETE ALL Edge data:
echo - Saved passwords, bookmarks, cookies, autofill, etc.
pause
taskkill /f /im msedge.exe
rmdir /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data"
ipconfig /flushdns
echo Edge data reset complete.
pause
goto browser_menu

:reset_brave
cls
echo ================================================
echo RESETTING BRAVE BROWSER
echo ================================================
echo WARNING: This will DELETE ALL Brave data:
echo - Saved passwords, bookmarks, cookies, autofill, etc.
pause
taskkill /f /im brave.exe
rmdir /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data"
ipconfig /flushdns
echo Brave data reset complete.
pause
goto browser_menu

:reset_opera
cls
echo ================================================
echo RESETTING OPERA GX
echo ================================================
echo WARNING: This will DELETE ALL Opera GX data:
echo - Saved passwords, bookmarks, cookies, autofill, etc.
pause
taskkill /f /im opera.exe
rmdir /s /q "%APPDATA%\Opera Software\Opera GX Stable"
ipconfig /flushdns
echo Opera GX data reset complete.
pause
goto browser_menu

:reset_firefox
cls
echo ================================================
echo RESETTING FIREFOX
echo ================================================
echo WARNING: This will DELETE ALL Firefox data:
echo - Saved passwords, bookmarks, cookies, autofill, etc.
pause
taskkill /f /im firefox.exe
rmdir /s /q "%APPDATA%\Mozilla\Firefox\Profiles"
rmdir /s /q "%APPDATA%\Mozilla\Firefox\Crash Reports"
ipconfig /flushdns
echo Firefox data reset complete.
pause
goto browser_menu

:advanced_network
cls
echo ==================================================
echo          ADVANCED NETWORK TOOLS (Power Users)
echo ==================================================
echo WARNING: These commands can change or reset
echo important network settings. Only use if you
echo know what you are doing!
echo.
echo 1. Disable/re-enable network adapter
echo 2. Clear ARP cache (arp -d *)
echo 3. Release IPv6 address (ipconfig /release6)
echo 4. Renew IPv6 address (ipconfig /renew6)
echo 5. Show network config (ipconfig /all, netsh show)
echo 6. Ping test (connectivity check)
echo 7. Reset hosts file
echo 8. Run Windows Network Troubleshooter
echo 9. Reset route table (route -f)
echo 10. Reset Windows Firewall (netsh advfirewall reset)
echo 11. Change DNS server (Google, Cloudflare, Quad9)
echo 12. Run ALL advanced commands
echo 13. Back to Main Menu
echo.
set /p advchoice="Select an option (1-13): "

if "%advchoice%"=="1" goto disable_adapter
if "%advchoice%"=="2" goto arp
if "%advchoice%"=="3" goto release6
if "%advchoice%"=="4" goto renew6
if "%advchoice%"=="5" goto showconfig
if "%advchoice%"=="6" goto pingtest
if "%advchoice%"=="7" goto resethosts
if "%advchoice%"=="8" goto windiag
if "%advchoice%"=="9" goto route
if "%advchoice%"=="10" goto firewall
if "%advchoice%"=="11" goto changedns
if "%advchoice%"=="12" goto alladvanced
if "%advchoice%"=="13" goto main_menu
goto advanced_network

:disable_adapter
cls
echo DISABLE/ENABLE NETWORK ADAPTER
echo ------------------------------
echo Disables, then re-enables a network adapter.
echo Fixes some adapter or driver issues.
echo.
echo Available adapters:
powershell -Command "Get-NetAdapter | where Status -eq 'Up' | select -ExpandProperty Name"
set /p adapter_name="Enter your adapter name (e.g., Wi-Fi, Ethernet): "
echo Disabling adapter: %adapter_name%
pause
netsh interface set interface "%adapter_name%" admin=disable
timeout /t 3
netsh interface set interface "%adapter_name%" admin=enable
echo Adapter %adapter_name% has been reset.
pause
goto advanced_network

:arp
cls
echo arp -d *
echo ---------
echo Clears the ARP cache (IP-to-MAC address mappings).
echo Use if you have local network problems.
pause
arp -d *
echo Done.
pause
goto advanced_network

:release6
cls
echo ipconfig /release6
echo ------------------
echo Releases the current IPv6 address.
pause
ipconfig /release6
echo Done.
pause
goto advanced_network

:renew6
cls
echo ipconfig /renew6
echo ----------------
echo Renews the IPv6 address.
pause
ipconfig /renew6
echo Done.
pause
goto advanced_network

:showconfig
cls
echo SHOW NETWORK CONFIGURATION
echo --------------------------
echo Shows all current network settings.
pause
ipconfig /all
echo --------------------------
netsh interface ipv4 show config
echo --------------------------
netsh interface ipv6 show config
pause
goto advanced_network

:pingtest
cls
echo PING TEST
echo ---------
echo Check connectivity to common internet addresses.
pause
ping 8.8.8.8
ping 1.1.1.1
ping google.com
pause
goto advanced_network

:resethosts
cls
echo RESET HOSTS FILE
echo ----------------
echo Resets the hosts file to Windows defaults.
set hostsfile=%SystemRoot%\System32\drivers\etc\hosts
if exist "%hostsfile%" (
    copy "%hostsfile%" "%hostsfile%.bak"
    > "%hostsfile%" echo 127.0.0.1       localhost
    >> "%hostsfile%" echo ::1             localhost
    echo Hosts file reset. Backup saved as hosts.bak
) else (
    echo Hosts file not found.
)
pause
goto advanced_network

:windiag
cls
echo WINDOWS NETWORK DIAGNOSTICS
echo ---------------------------
echo Launches the Windows network troubleshooter.
pause
msdt.exe /id NetworkDiagnosticsNetworkAdapter
goto advanced_network

:route
cls
echo route -f
echo --------
echo WARNING: This will reset the routing table.
echo All static routes will be lost; may disconnect remote users.
pause
route -f
echo Done.
pause
goto advanced_network

:firewall
cls
echo netsh advfirewall reset
echo -----------------------
echo WARNING: Resets all firewall rules to default. Custom rules will be lost.
pause
netsh advfirewall reset
echo Firewall reset to default.
pause
goto advanced_network

:changedns
cls
echo CHANGE DNS SERVER
echo -----------------
echo Set your DNS servers to Google, Cloudflare, or Quad9.
powershell -Command "Get-NetAdapter | where Status -eq 'Up' | select -ExpandProperty Name"
set /p adapter_name="Enter your adapter name (e.g., Wi-Fi, Ethernet): "
echo.
echo 1. Google DNS (8.8.8.8, 8.8.4.4)
echo 2. Cloudflare DNS (1.1.1.1, 1.0.0.1)
echo 3. Quad9 DNS (9.9.9.9, 149.112.112.112)
echo 4. Reset to Automatic (DHCP-assigned)
set /p dnschoice="Select DNS provider (1-4): "
if "%dnschoice%"=="1" (
    set primary=8.8.8.8
    set secondary=8.8.4.4
) else if "%dnschoice%"=="2" (
    set primary=1.1.1.1
    set secondary=1.0.0.1
) else if "%dnschoice%"=="3" (
    set primary=9.9.9.9
    set secondary=149.112.112.112
) else (
    set primary=dhcp
)
if "%primary%"=="dhcp" (
    netsh interface ip set dns name="%adapter_name%" source=dhcp
    echo DNS reset to automatic.
) else (
    netsh interface ip set dns name="%adapter_name%" source=static addr=%primary%
    netsh interface ip add dns name="%adapter_name%" addr=%secondary% index=2
    echo DNS set to %primary% and %secondary% for %adapter_name%.
)
pause
goto advanced_network

:alladvanced
cls
echo This will run all advanced network commands in order:
echo - Disable/re-enable adapter
echo - Clear ARP cache
echo - IPv6 release/renew
echo - Show network config
echo - Ping test
echo - Reset hosts file
pause
powershell -Command "Get-NetAdapter | where Status -eq 'Up' | select -ExpandProperty Name"
set /p adapter_name="Enter your adapter name (e.g., Wi-Fi, Ethernet): "
netsh interface set interface "%adapter_name%" admin=disable
timeout /t 3
netsh interface set interface "%adapter_name%" admin=enable
arp -d *
ipconfig /release6
ipconfig /renew6
ipconfig /all
netsh interface ipv4 show config
netsh interface ipv6 show config
ping 8.8.8.8
ping 1.1.1.1
ping google.com
set hostsfile=%SystemRoot%\System32\drivers\etc\hosts
if exist "%hostsfile%" (
    copy "%hostsfile%" "%hostsfile%.bak"
    > "%hostsfile%" echo 127.0.0.1       localhost
    >> "%hostsfile%" echo ::1             localhost
)
echo All advanced commands completed.
pause
goto advanced_network
