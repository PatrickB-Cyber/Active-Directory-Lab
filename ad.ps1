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

#View Domain Users
Get-ADUser -Filter *

#Find a specific user
Get-ADUser -Identity jlowpez

#Create a new user
New-ADUser `
    -Name "John Doe" `
    -GivenName "John" `
    -Surname "Doe" `
    -SamAccountName "jdoe" `
    -UserPrincipalName "jdoe@ricky.local" `
    -Title "Sales Representative" `
    -Path "OU=Finance,OU=Employees,DC=ricky,DC=local" `
    -AccountPassword (Read-Host -AsSecureString "FakestPasswordAround" `
    -Enabled $true `
    -ChangePasswordAtLogon $true

##########Security Group Management

#View Security Groups
Get-ADGroup -Filter *

#View Group Members
Get-ADGroupMember -Identity "group"

#Add User to Security Group
Add-ADGroupMember -Identity "group" -Members "jdoe"

#Remove User to Security Group
Remove-ADGroupMember -Identity "group" -Members "jdoe"

# Force Group Policy Update & View updated GPs
gpupdate /force
gpresult /r

########Network shares

#View all Shares
net share

#Manually Map a network drive
net use A: \\DC-NAME\Finance

#Remove a mapped drive
net use A: /delete


