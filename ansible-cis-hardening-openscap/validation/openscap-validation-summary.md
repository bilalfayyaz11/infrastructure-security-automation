# OpenSCAP Validation Summary

## Scan Target
- Operating System: Ubuntu 24.04 LTS
- SCAP Content Used: Ubuntu 22.04 CIS Level 1 Server profile
- Validation Tool: OpenSCAP

## Generated Artifacts
- reports/results.xml
- reports/report.html
- reports/final-report.html

## Important Note
Ubuntu 24.04 SCAP content was not available in the installed package repository, so the nearest available Ubuntu CIS benchmark content was used for validation.

## Result Interpretation
The OpenSCAP report identifies compliant and non-compliant controls. Any failed controls should be reviewed and remediated through Ansible so hardening remains repeatable.
