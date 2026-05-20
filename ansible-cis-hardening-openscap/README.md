# Ansible CIS Hardening and OpenSCAP Validation

## Objectives

This project automates Linux system hardening using Ansible and validates the hardened configuration using OpenSCAP compliance scanning.

## Tools Used

- Ubuntu Linux
- Ansible Core
- OpenSCAP
- SCAP Security Guide
- UFW Firewall
- auditd
- Bash

## Key Skills Demonstrated

- Infrastructure security hardening automation
- CIS benchmark-based configuration management
- Ansible playbook development
- SSH security configuration
- Linux firewall hardening
- Audit logging enablement
- Compliance validation with OpenSCAP
- Security report generation and interpretation

## Implemented Hardening Controls

- Disabled IPv6
- Disabled root SSH login
- Disabled SSH password authentication
- Validated SSH configuration before restart
- Enabled UFW firewall with default deny policy
- Allowed SSH traffic on port 22
- Installed and enabled auditd logging

## Validation

OpenSCAP was used to generate compliance reports:

- `reports/results.xml`
- `reports/report.html`
- `reports/final-report.html`

## Troubleshooting Log

- Fixed invalid YAML structure from the original lab instructions.
- Replaced deprecated OpenSSH `Protocol 2` directive.
- Avoided unsafe firewall source-IP restriction that could lock out cloud SSH access.
- Used localhost Ansible inventory because no remote test server was provided.
- Replaced unavailable Ubuntu 24.04 SCAP content with nearest available Ubuntu 22.04 CIS profile.
- Added SSH syntax validation before restarting SSH.
