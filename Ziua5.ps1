Set-ClusterQuorum -DiskWitness "Cluster Disk 3"
#\\LON-DC1.Adatum.com\WhitnessShare
Set-ClusterQuorum -FileShareWitness "\\LON-DC1.Adatum.com\WhitnessShare"
get-ClusterQuorum