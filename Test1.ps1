Get-Command  | measure
Get-Command  test*
Get-Command  test*

Get-Command test*net*
Test-NetConnection

Get-Command test*con*
Test-Connection

get-help Test-NetConnection 
help Test-NetConnection 
Man Test-NetConnection 

Test-NetConnection  

update-help -Force 


help Test-NetConnection -ShowWindow
Test-NetConnection -ComputerName "www.contoso.com" -InformationLevel "Detailed"
Test-NetConnection -ComputerName "google.ro" -InformationLevel "Detailed"


help Test-Connection -ShowWindow
help Test-Connection -Examples  
help Test-Connection -Full
help Test-Connection -Online

Test-Connection "." 
Test-Connection localhost
Test-Connection ::1
Test-Connection 127.0.0.1

Test-Connection google.ro
Test-Connection -ComputerName google.ro -Count 1

Test-Connection localhost,::1,google.ro,atos.net -Protocol DCOM 


Test-Connection -ComputerName ::1 -Count 1

ping www.google.ro