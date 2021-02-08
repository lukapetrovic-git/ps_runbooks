Get-Service -Name w32time -Computer _computerName_ |
? { $_.Status -eq "Stopped" } | Start-Service 
Get-Service -Name w32time -Computer _computerName_ | format-table -AutoSize MachineName, ServiceName, DisplayName, Status, StartType 
