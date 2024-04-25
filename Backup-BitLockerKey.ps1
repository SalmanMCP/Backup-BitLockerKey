# Automated BitLocker Encryption Key Backup

# PowerShell Script Version: 1.2
# Written by: Salman Ahmed | Github: @ahmedsalmantec 
# Last Updated: 04/25/2024

# This PowerShell script automates the process of backing up BitLocker encryption keys to both Microsoft Active Directory
# in a Domain Joined Environment and Microsoft Entra ID (formerly known as Azure Active Directory).
# Notably, you don't need to manually specify a Mount Point or the Key Protector ID. The script will automatically handle
# these details for all volumes on the current computer.


# Retrieves all BitLocker volumes for the current computer.
$BDEVOLS =  Get-BitLockerVolume

foreach ($BDEVOL in $BDEVOLS) {
    
    # Storing Mount Points letters
    $MP = $BDEVOL.MountPoint
    

    # Storing Mount Points in array for further processing
    $MPList = Get-BitLockerVolume -MountPoint $MP

  
    # Storing Key Protector IDs in a array for further processing
    $KPId = $MPList.KeyProtector[1].KeyProtectorId
   
    
    # Backup BitLocker Encryption keys to Microsoft Active Directory in Domain Joined Environment.
    Backup-BitLockerKeyProtector -MountPoint $MP -KeyProtectorId $KPId
    

    # Backup BitLocker Encryption keys to Microsoft Entra ID formerly known as Azure Active Directory.
    BackupToAAD-BitLockerKeyProtector -MountPoint $MP -KeyProtectorId $KPId

}
