Get-Service -Name *TaxCore* -Computer FRCVMSPRODAPP11 |
? { $_.Status -eq "Stopped" -and $_.StartType -eq "Auto" } | Start-Service 
Get-Service -Name *TaxCore* -Computer FRCVMSPRODAPP11 | format-table -AutoSize MachineName, ServiceName, DisplayName, Status, StartType
