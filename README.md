# Automated BitLocker Encryption Key Backup

##### PowerShell Script | Version: 1.2
##### Written by: Salman Ahmed | Last Updated: 04/25/2024

This PowerShell script automates the process of **backing up BitLocker encryption keys**.

Specifically, it accomplishes the following tasks: 
<br /><br />

1. **Backup to Microsoft Active Directory (AD)**:

   The script ensures that BitLocker encryption keys are securely stored in the Active Directory of a **Domain Joined Environment**.
   <br /><br />


3. **Backup to Microsoft Entra ID (formerly Azure AD)**:

   Additionally, the script backs up the keys to **Microsoft Entra ID**, which is the cloud-based identity and access management service. This ensures redundancy and accessibility even beyond the local network.
   <br /><br />


5. **Automatic Handling of Mount Points and Key Protector IDs**:

   Notably, you don't need to manually specify the **Mount Point** or the **Key Protector ID**. The script intelligently identifies these details for all volumes on the current computer.
   <br /><br />
