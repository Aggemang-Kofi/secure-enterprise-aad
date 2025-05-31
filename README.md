# secure-enterprise-aad
Advanced Azure AD Security Implementation with Zero Trust and Automation
## Project Overview

This project demonstrates an enterprise-grade Azure Active Directory (Azure AD) security implementation using **Zero Trust principles**, **Conditional Access**, **Multi-Factor Authentication (MFA)**, **Privileged Identity Management (PIM)**, and **SIEM integration**. It automates secure deployments using PowerShell, Microsoft Graph, and optionally Terraform.

##  Objectives

- Enforce Zero Trust using Conditional Access policies
- Deploy MFA across all accounts with break-glass exclusions
- Configure Privileged Identity Management (PIM)
- Integrate Azure AD logs into Azure Sentinel
- Automate provisioning of users, roles, and policies
- Monitor risky logins and generate alerts using KQL

---

##  Repository Structure

```

secure-enterprise-aad/
├── terraform/                   # Terraform templates for automation (optional)
├── scripts/                     # PowerShell + CLI scripts
├── docs/                        # Documentation and policy descriptions
├── logs/                        # Exported sign-in or audit logs
├── screenshots/                 # Configuration screenshots
├── sentineldetectionrules/     # KQL queries for Azure Sentinel
└── README.md                    # This file

```

---

## ⚙ Core Components

###  1. Multi-Factor Authentication (MFA)
- Required for all users
- Exclude break-glass account(s)
- Verified using Conditional Access policies

###  2. Conditional Access (CA)
- Enforce compliant device access
- Block legacy authentication
- Require MFA for admins
- Block access from specific locations
- Risk-based MFA enforcement using Identity Protection

###  3. Privileged Identity Management (PIM)
- Just-In-Time role elevation
- Require MFA and approval for elevated roles
- Role activation alerts

###  4. Logging & Monitoring
- Connect Azure AD logs to **Azure Sentinel**
- Write custom **KQL queries** for:
  - Impossible travel detection
  - MFA failures
  - Role elevation attempts

###  5. Automation (PowerShell + Graph API)
- User creation and role assignment scripts
- Export Conditional Access policies
- Policy state backups

---

##  Example Screenshots

Screenshots are included in the `/screenshots` directory, showing:
- Conditional Access policy setup
- PIM activation flow
- Sentinel rule configuration

---

## Detection & KQL Queries

The `/sentineldetectionrules/` folder includes:
- `mfa_failures.kql`
- `impossible_travel.kql`
- `pim_activations.kql`

---

## Requirements

- Azure Subscription
- Azure AD Premium P2 (for PIM + Identity Protection)
- GitHub CLI or Git
- PowerShell (latest version)
- Optional: Terraform + Azure CLI

---

##  Security Considerations

- Always exclude break-glass accounts from automated Conditional Access policies
- Monitor sign-in and audit logs daily
- Enable alerts on role activation, risky users, and high-failure MFA rates
- Backup all CA policies and roles before changes

---

##  To-Do

- [ ] Add Terraform module for full deployment
- [ ] Add Graph API-based scripts for automation
- [ ] Add Teams/Slack alert integration
- [ ] Add audit log ingestion into third-party SIEM

---

## References

- [Microsoft Entra Conditional Access](https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/)
- [Privileged Identity Management (PIM)](https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/)
- [Microsoft Graph API](https://learn.microsoft.com/en-us/graph/overview)


