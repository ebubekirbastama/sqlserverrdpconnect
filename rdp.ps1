# 1. Enable Remote Desktop
(Get-WmiObject Win32_TerminalServiceSetting -Namespace root\cimv2\TerminalServices).SetAllowTsConnections(1,1) 
(Get-WmiObject -Class "Win32_TSGeneralSetting" -Namespace root\cimv2\TerminalServices -Filter "TerminalName='RDP-tcp'").SetUserAuthenticationRequired(0) 

# 2. Enable the firewall rule
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
