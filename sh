Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "a*C'UZ4Gf^9!\6gG" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
unzip ngrok.zip
Copy ngrok.exe C:\Windows\System32
Start-Service -Name audiosrv
cmd /c echo ./ngrok.exe authtoken "22gUjWCEIAoS5fwqT1UE5JlZbZA_uQSDnpFM8Wsg7iozKZ3z" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 8043 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1