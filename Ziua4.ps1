#storage
Get-StoragePool   | select *
Get-Command -Module  Storage -Verb get
Get-PhysicalDisk  | select *
Get-StoragePool | ? FriendlyName -like "PoolStorageUseri" | Get-PhysicalDisk   | select *


#iSCSI

#IQN:iqn.1991-05.com.microsoft:lon-svr2.adatum.com #2
#IQN:iqn.1991-05.com.microsoft:lon-svr3.adatum.com #3

New-IscsiVirtualDisk -path "z:\virtualdisks\iscsi.vhdx" -size 10GB
New-IscsiServerTarget -targetname iscsi-target -InitiatorIds "IQN:iqn.1991-05.com.microsoft:lon-svr2.adatum.com","IQN:iqn.1991-05.com.microsoft:lon-svr3.adatum.com"
Add-IscsiVirtualDiskTargetMapping -targetname iscsi-target -path "Z:\virtualdisks\iscsi.vhdx"



mkdir c:\VM-Hosts\TM-VM1
mkdir c:\VM-Hosts\TM-VM2


#CreateNewVM

#BaseVHD
"C:\Program Files\Microsoft Learning\Base\Base17C-WS16-1607.vhd"

#VirtualSwitch
"Private Network"

New-VHD "c:\VM-Hosts\TM-VM1\tm-vm1.vhd" -ParentPath "C:\Program Files\Microsoft Learning\Base\Base17C-WS16-1607.vhd"
New-VHD "c:\VM-Hosts\TM-VM2\tm-vm2.vhd" -ParentPath "C:\Program Files\Microsoft Learning\Base\Base17C-WS16-1607.vhd"


New-VM -Name TM-VM1 -MemoryStartupBytes 4096MB -VHDPath "c:\VM-Hosts\TM-VM1\tm-vm1.vhd" -SwitchName "Private Network"
New-VM -Name TM-VM2 -MemoryStartupBytes 4096MB -VHDPath "c:\VM-Hosts\TM-VM2\tm-vm2.vhd" -SwitchName "Private Network"


$credential = Get-Credential #Administrator  si Parola

Enter-PSSession -VMName TM-vm1  -Credential $credential

Rename-Computer TM-VM1
Restart-Computer -Force
#exit

Enter-PSSession -VMName TM-vm2  -Credential $credential
Rename-Computer TM-VM2
Restart-Computer -Force
#exit



Invoke-Command -VMName  TM-vm1, TM-vm2 -ScriptBlock  {

Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Get-NetFirewallProfile | select Name , enabled
hostname

} -Credential $credential






