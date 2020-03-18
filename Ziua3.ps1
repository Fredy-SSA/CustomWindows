#enable Powereshell remote
Enable-PSRemoting -Force

#get VmName
Get-VM


Get-Command *network*
Get-Command set*network*
Get-Command set*ip*

#Set IP Address cmdlets
help Set-NetIPAddress -Examples 

get-NetIPAddress | select * -First 1
New-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.0.4 -PrefixLength 23

help New-NetIPAddress -Examples 


Remove-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.0.1
New-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.0.4 -PrefixLength 23
Set-NetIPInterface -InterfaceIndex 6 -Dhcp Enabled


get-NetIPInterface
Set-NetIPInterface -InterfaceAlias iptest -Dhcp Enabled


#Powershell for Network
Get-NetAdapter
Restart-NetAdapter
Get-NetIPInterface
Get-NetIPAddress
Get-NetRoute
Get-NetConnectionProfile
Get-DNSClientCache
Get-DNSClientServerAddress
Register-DnsClient
Set-DnsClient
Set-DnsClientGlobalSetting
Set-DnsClientServerAddress
Set‑NetIPAddress
Set‑NetIPv4Protocol
Set‑NetIPInterface
Test-Connection
Test-NetConnection
Resolve-Dnsname


