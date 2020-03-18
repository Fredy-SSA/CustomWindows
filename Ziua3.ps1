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

help New-NetIPAddress -Examples 


Remove-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.0.1
New-NetIPAddress -InterfaceIndex 6 -IPAddress 192.168.0.4 -PrefixLength 23

Set-NetIPInterface -InterfaceIndex 6 -Dhcp Enabled



#ipv6
<#
0 - 0000
1 - 0001
2 - 0010
3 - 0011
4 - 0100
5 - 0101
6 - 0110
7 - 0111
8 - 1000
9 - 1001
A - 1010
B - 1011
C - 1100
D - 1101
E - 1110
F - 1111

2001    :FEC2    :1111 :0000:0000:1111:223D:0001
16 bits  16 bits       ::                  :1

Example
Srv1
fd00:aaaa:bbbb:cccc::1
Srv2
fd00:aaaa:bbbb:cccc::2

Loopback
ipv4= 127.0.0.1
ipv6= ::1

Autoconfigured
ipv4= 169.254.0.0/16
ipv6= FE80::/64

PrivateClass

IPv4 = 192.168.0.0/16
       172.16.0.0/8
       10.0.0.0/24
Ipv6 = FD00::/8

Public_Class

IPv6 = 2001 - 2003::
       2001:DB8:0:2D4C:1CC:DD:1122:1234



#>

