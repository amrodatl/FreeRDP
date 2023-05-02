
net.exe user "installer" "Password@001"
write-host Username: installer
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken 1kKqyb40b1P2UMnuDiryfNesyVr_3wzsiUPvWsUFjzd2WMTwB
.\ngrok.exe tcp 3389
