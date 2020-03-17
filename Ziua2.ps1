#powershell remote
Enable-PSRemoting -Force


#verifici serviciile oprite
Get-Service | ? {$_.status -like "st*"  -and  $_.StartType -like "Automatic"}
Get-Service | select * -First 1
Get-Service | ? {$_.status -like "st*"  -and  $_.StartType -like "Automatic"} | Start-Service 

#disable firewall winCore
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False


#startBackup
 #Backup
 Get-Command *backup* 
 Get-Command *backup* -Module WindowsServerBackup
 get-help Start-WBBackup  -ShowWindow

 help New-WBPolicy -ShowWindow
 $Policy = Get-WBPolicy
 Start-WBBackup -Policy $Policy 