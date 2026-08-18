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
Below we have a breakdown of global security groups for each department and administrative roles in the organization. Creating these groups will help give me centralized access control, which means I can assign permissions based on a user's job role or department instead of an individual account. Going a level deeper in the second screenshot we can see that I users are assigned based on their department and role. 

📁 Department File Shares & Permissions
I created a file share for each department to simulate a centralized file storage. Each folder will have NTFS permissions assigned using the AD security groups rather than the individual accounts. In the example below, we give RICKY\Finance permissions to the finance folder. This means that when a finance employee logs into their workstation they will access to the finance share but employees from the other departments will not have access. 

⚙️ Group Policy Management
I configured a handful of Group Policy Objects (GPOs) to centrally manage user settings, security configurations, and network resources across the domain. I mapped some network drives to allow employees to automatically receive the network resources for their role when they sign into their workstations, enforced lock-screen settings, and displayed a security banner. In the second screenshot The GPO is mapped as the A: drive and linked to the Finance OU. 

🖥️ Host Workstation
Below are a series of screenshots from the user workstation that I set up, showing a few GPOs and settings configured from the DC.




