############Powershell Commands for Active Directory Lab
############This document contains many of the PowerShell and windows Commands used when building, administering and troubleshooting the AD lab

#View Organizational Units
Get-ADOrganizationalUnit -Filter * | Select-Object Name, DistinguishedName

#Create an Organizational Unit
New-ADOrganizationalUnit -Name "Finance" -Path "OU=Employees,DC=ricky,DC=local"

#Delete an OU 
#Keep in mind that you may need to disable the accidental deletion setting in order to use this
Remove-ADOrganizationalUnit -Identity "OU=Finance_Old,OU=Employees,DC=ricky,DC=local"


#########User Management

