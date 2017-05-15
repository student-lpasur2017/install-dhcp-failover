# Installation de DHCP
Install-WindowsFeature -name DHCP -IncludeManagementTools -IncludeAllSubFeature
# Mise en place d'un server secondaire de type loadbalancing
Add-DhcpServer4Failover -Name "OpenWin" -PartenerServer "OPENWIN-DHCP01" -AutoStateTransition $true -ServerRole Standby -SharedSecret "csecret" -WhateIf
