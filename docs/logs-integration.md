# Azure Sentinel Integration with Azure AD

## Objective
Forward Azure AD logs into Microsoft Sentinel for monitoring and detection.

##  Connected Logs

- Azure AD Sign-In Logs
- Azure AD Audit Logs
- Identity Protection Risk Events

## Steps

1. Open **Microsoft Sentinel**
2. Go to **Data Connectors**
3. Connect:
   - Azure Active Directory
   - Sign-in logs
   - Audit logs

## Validation

```kql
SigninLogs
| where UserPrincipalName contains "john.smith"
