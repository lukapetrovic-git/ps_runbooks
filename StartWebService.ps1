Get-Service -Name "W3SVC" -Computer _computerName_ |
? { $_.Status -eq "Stopped" -and $_.StartType -eq "Auto" } | Start-Service 
Get-Service -Name "W3SVC" -Computer _computerName_ | format-table -AutoSize MachineName, ServiceName, DisplayName, Status, StartType 
