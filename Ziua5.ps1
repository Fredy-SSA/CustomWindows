Set-ClusterQuorum -DiskWitness "Cluster Disk 3"
#\\LON-DC1.Adatum.com\WhitnessShare
Set-ClusterQuorum -FileShareWitness "\\LON-DC1.Adatum.com\WhitnessShare"
get-ClusterQuorum


#DFS 
get-command -Module dfsn

#ex comanda"
New-DfsnRoot -TargetPath "\\Contoso-FS\AccountingResources" -Type DomainV2 -Path "\\Contoso\AccountingResources"

#Creaza un director
mkdir c:\testShare
#fa un share
New-SMBShare –Name "Test Share" –Path "c:\testShare" –FullAccess Everyone 

#Creare DFSN root
New-DfsnRoot -TargetPath "\\tm-vm1\Test Share" -Type DomainV2 -Path "\\Adatum.com\Test Share"



Get-Command  -Module DfsR
#Creare Folder Replication
Set-DfsReplicatedFolder -DfsnPath "\\Adatum\Contabilitate" -GroupName  "Contabilitate"

