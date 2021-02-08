Get-Service -Name CertSvc -Computer _computerName_ |
? { $_.Status -eq "Stopped" -and $_.StartType -eq "Auto" } | Start-Service 
Get-Service -Name CertSvc -Computer _computerName_ | format-table -AutoSize MachineName, ServiceName, DisplayName, Status, StartType 
