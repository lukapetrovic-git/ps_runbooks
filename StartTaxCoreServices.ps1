Get-Service -Name *TaxCore* -Computer Test |
? { $_.Status -eq "Stopped" -and $_.StartType -eq "Auto" } | Start-Service 
Get-Service -Name *TaxCore* -Computer Test | format-table -AutoSize MachineName, ServiceName, DisplayName, Status, StartType
