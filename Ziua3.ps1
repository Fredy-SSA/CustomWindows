#enable Powereshell remote
Enable-PSRemoting -Force

#get VmName
Get-VM

Get-Command *network*
Get-Command set*network*
Get-Command set*ip*

help Set-NetIPAddress -Examples 

get-NetIPAddress | select * -First 1
New-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.0.4 -PrefixLength 23



