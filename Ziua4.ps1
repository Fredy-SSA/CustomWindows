#storage
Get-StoragePool   | select *
Get-Command -Module  Storage -Verb get
Get-PhysicalDisk  | select *
Get-StoragePool | ? FriendlyName -like "PoolStorageUseri" | Get-PhysicalDisk   | select *

revenim la 10:25
