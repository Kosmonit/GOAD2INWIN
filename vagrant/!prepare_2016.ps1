[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

.\Install-WMF3Hotfix.ps1
.\ConfigureRemotingForAnsible.ps1 

Register-PSRepository -Default
Get-PSRepository

Install-Module -Name ComputerManagementDsc
Install-Module -Name xNetworking
Install-Module -Name xDnsServer
Install-Module -Name xActiveDirectory 