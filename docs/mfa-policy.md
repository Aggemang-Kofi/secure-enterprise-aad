# Privileged Identity Management (PIM) Configuration

## Objective
Protect admin privileges using JIT access, approval workflows, and MFA.

## Settings for Global Administrator (admin@yourdomain)

| Setting               | Value                   |
|-----------------------|-------------------------|
| **Assignment Type**   | Eligible                |
| **MFA Required**      | ✅ Yes                  |
| **Approval Required** | ✅ Yes (2 managers)     |
| **Justification**     | Required                |
| **Activation Time**   | 1 hour                  |

## Screenshot
![PIM Activation](../screenshots/pim_activation.png)

## Notes
- Alerts sent on role elevation.
- Logs can be pushed to Sentinel for detection.
