# Installation de DHCP
Install-WindowsFeature -name DHCP -IncludeManagementTools -IncludeAllSubFeature
# Mise en place d'un server secondaire de type loadbalancing
Add-DhcpServer4Failover -Name "OpenWin" -ScopeId 172.17.2.0,172.17.3.0 -StateSwitchInternal 01:00:00 -PartenerServer "OPENWIN-DHCP01" -AutoStateTransition $true -ServerRole Standby -SharedSecret "csecret" -WhateIf
