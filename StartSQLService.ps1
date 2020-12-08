Get-Service -Name 'MSSQLSERVER' -Computer Test |
? { $_.Status -eq "Stopped" -and $_.StartType -eq "Auto" } | Start-Service 
Get-Service -Name 'MSSQLSERVER' -Computer Test | format-table -AutoSize MachineName, ServiceName, DisplayName, Status, StartType 
