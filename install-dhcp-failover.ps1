# A executer sur le serveur DHCP pour deployer sa conf au serveur secondaire

# Installation de DHCP
Install-WindowsFeature -name DHCP -IncludeManagementTools -IncludeAllSubFeature
# Mise en place d'un server secondaire de type loadbalancing
Add-DhcpServerv4Failover -Name "OpenWin" -ScopeId 172.17.2.0,172.17.3.0 -StateSwitchInterval 01:00:00 -PartnerServer OPENWIN-DHCP02.alsace.openwin.com -AutoStateTransition $true -ServerRole Active -SharedSecret "0p3nW1n" -WhatIf
