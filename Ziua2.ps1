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
Get-NetFirewallProfile  | select Name , enabled

