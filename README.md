🖥️ Active Directory Home Lab

This project covers a hands-on Active Directory lab designed to simulate the administration of a small enterprise Windows environment.

The lab includes:

- ✅ Windows Server Domain Controller
- ✅ Active Directory Domain Services (AD DS)
- ✅ Organizational Units (OUs) structured by department
- ✅ User and security group administration
- ✅ Domain-joined Windows workstations
- ✅ Group Policy Objects (GPOs)
- ✅ Department-based file share permissions
- ✅ Automatic network drive mapping
- ✅ DNS configuration and troubleshooting
- ✅ PowerShell administration
- ✅ osTicket help desk integration

🖥️ Initial Setup
I set up two virtual machines using virtual box. The first VM is set up using Windows Server which will be used to run my AD environment to simulate a domain controller and where I do all of my system administration tasks. The second will serve as my host environment connected to the DC. I will use the second machine as a workstation for the employees that I create. 

🏢 Active Directory Organization

The AD environment uses ricky.local domain and is structured to simulate a real organization. The employees that were created are separated into created organizational units. This allows me to manage user, computers, permissions, and GPOs based on roles within the company. The following shows a breakdown of each department. Each department is filled with a few employees. 

🔐 Security Groups & Access Control
Below we have a breakdown of global security groups for the created departments
