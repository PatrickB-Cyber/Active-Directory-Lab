##Powershell Commands for Active Directory Lab

This document contains many of the PowerShell and windows Commands used when building, administering and troubleshooting the AD lab

###View Organizational Units

Get-ADOrganizationalUnit -Filter * | Select-Object Name, DistinguishedName

###Create an Organizational Unit

