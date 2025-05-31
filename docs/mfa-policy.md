# Conditional Access Policy: Require MFA for All Users

## Objective
Ensure strong authentication by enforcing MFA across all users while excluding break-glass accounts.

## Policy Settings

| Setting              | Value                                         |
|----------------------|-----------------------------------------------|
| **Policy Name**      | Require MFA for All Users                     |
| **Users Included**   | All users                                     |
| **Users Excluded**   | breakglass@yourdomain.onmicrosoft.com         |
| **Cloud Apps**       | All                                           |
| **Grant Controls**   | Require multi-factor authentication           |
| **Enable Policy**    | ✅ Enabled                                    |

## Notes
- Excluding the break-glass account avoids accidental lockout.
- MFA methods used include Microsoft Authenticator and FIDO2 keys.

## Screenshot

