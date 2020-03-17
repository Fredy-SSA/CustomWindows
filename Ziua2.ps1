#powershell remote
Enable-PSRemoting -Force


#verifici serviciile oprite
Get-Service | ? {$_.status -like "st*"  -and  $_.StartType -like "Automatic"}
Get-Service | select * -First 1
Get-Service | ? {$_.status -like "st*"  -and  $_.StartType -like "Automatic"} | Start-Service 

#disable firewall winCore
Get-Command *fire*
help set-NetFirewallProfile -ShowWindow
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Get-NetFirewallProfile | select Name , enabled

Get-NetFirewallProfile | export-csv c:\test.csv
Get-NetFirewallProfile | select Name , enabled | export-csv c:\test.csv

Get-NetFirewallProfile | gm
Get-NetFirewallProfile | select Name , enabled | gm
Get-NetFirewallProfile | select Name , enabled
notepad c:\test.csv


#display ip data 
Get-Command get*ip*
Get-NetIPAddress  | select * -First 1
Get-NetIPAddress  |  select InterfaceAlias, IPAddress , IPv4Address , IPv6Address, hea*

#ip 
<#
                  128 64  32 16 8 4  2  1. 128 64  32 16 8 4  2  1
11111111.11111111.  1  1   1  1 1 1  1  1.   1  1   1  1 1 1  1  1
     192.     168.                      0.                       7

     255.     255.                    255.  1  1   1  0 0 0  0  0

     255.     255.  1  1   1  1 1 1  0  0.  0  0   0  0 0 0  0  0

192.168.3.1
192.168.2.1
192.168.1.1
192.168.0.1

192.168.0.0/22

11000000 = 192
10101100 = 172
00001010 = 10 


0
1
#>