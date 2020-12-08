Get-Service -Name w32time -Computer Test |
? { $_.Status -eq "Stopped" } | Start-Service 
Get-Service -Name w32time -Computer Test | format-table -AutoSize MachineName, ServiceName, DisplayName, Status, StartType 
