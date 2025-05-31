# Sentinel Detection Rules

This folder contains custom KQL analytics rules for detecting common Azure AD threats.

## Detection Rules

| Rule Name             | Description                                      |
|-----------------------|--------------------------------------------------|
| Impossible Travel     | Detects logins from different locations in short time |
| PIM Role Escalation   | Detects just-in-time admin role elevation       |
| MFA Failures          | Detects brute-force or MFA fatigue attempts     |
| Breakglass Usage      | Flags use of emergency accounts                 |

Each rule is saved as `.kql` and documented in a corresponding `.md` file.
