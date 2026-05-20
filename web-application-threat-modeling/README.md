# Web Application Threat Modeling with STRIDE and DREAD

## Objectives

This project creates a threat model for a sample web application using STRIDE methodology and DREAD risk prioritization. It identifies key security threats, scores their risk impact, and recommends mitigation strategies.

## Tools Used

- OWASP Threat Dragon
- Docker
- STRIDE Threat Modeling
- DREAD Risk Scoring
- Mermaid Diagrams
- Markdown
- Linux

## Key Skills Demonstrated

- Application security threat modeling
- Security architecture analysis
- STRIDE-based threat identification
- DREAD-based risk prioritization
- Threat mitigation planning
- Trust boundary mapping
- Secure design documentation
- Security evidence collection

## System Modeled

The modeled application includes:

- User
- Web Application
- Authentication Server
- Backend API
- Database

## Threat Categories Covered

- Spoofing
- Tampering
- Repudiation
- Information Disclosure
- Denial of Service
- Elevation of Privilege

## Highest Priority Risks

| Threat | DREAD Score |
|---|---:|
| Spoofing Authentication Server | 43 |
| Elevation of Privilege | 43 |
| Information Disclosure Database | 41 |

## Artifacts

- `models/system-components.md`
- `reports/stride-threat-analysis.md`
- `reports/dread-risk-matrix.md`
- `mitigations/mitigation-plan.md`
- `diagrams/web-app-threat-model.mmd`
- `evidence/threat-dragon-runtime-check.txt`

## Troubleshooting Log

- Installed Docker because it was missing from the fresh environment.
- Verified port 8080 availability before attempting the containerized tool.
- Attempted to run `owasp/threat-dragon:stable`.
- Container exited due to missing environment configuration.
- Confirmed `owasp/threat-dragon:latest` was not available.
- Continued the lab by generating complete threat modeling artifacts manually.
