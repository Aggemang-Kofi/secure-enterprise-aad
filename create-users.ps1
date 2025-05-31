# Connect to Azure AD
Connect-AzureAD

# --- Standard User ---
New-AzureADUser -DisplayName "John Smith" `
  -UserPrincipalName "john.smith@yourdomain.onmicrosoft.com" `
  -AccountEnabled $true `
  -MailNickName "johnsmith" `
  -PasswordProfile @{Password="StrongP@ssw0rd!"; ForceChangePasswordNextLogin=$true}

# --- Global Admin User ---
New-AzureADUser -DisplayName "Admin User" `
  -UserPrincipalName "admin@yourdomain.onmicrosoft.com" `
  -AccountEnabled $true `
  -MailNickName "adminuser" `
  -PasswordProfile @{Password="StrongP@ssw0rd!"; ForceChangePasswordNextLogin=$true}

# Assign Global Admin Role
$adminUser = Get-AzureADUser -SearchString "admin@yourdomain.onmicrosoft.com"
$role = Get-AzureADDirectoryRole | Where-Object {$_.DisplayName -eq "Global Administrator"}
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId $adminUser.ObjectId

# --- Break-Glass Account ---
New-AzureADUser -DisplayName "Break Glass" `
  -UserPrincipalName "breakglass@yourdomain.onmicrosoft.com" `
  -AccountEnabled $true `
  -MailNickName "breakglass" `
  -PasswordProfile @{Password="ULTRA$ecureBReak2024!"; ForceChangePasswordNextLogin=$false}
