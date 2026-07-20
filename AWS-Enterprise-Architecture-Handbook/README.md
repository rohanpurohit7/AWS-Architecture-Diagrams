# AWS Enterprise Architecture Handbook

A portfolio-ready AWS architecture repository covering Solutions Architect Professional, Developer, Security Specialty, Advanced Networking, Amazon Bedrock, agentic AI, security data engineering, SOC patterns, observability, and secure cloud operations.

> **Canonical content root:** all learning content, reference architectures, runbooks, diagrams, and notebooks live under this `AWS-Enterprise-Architecture-Handbook/` directory. Repository-level `.github/` remains at the GitHub-required location for automation.

## Start Here

1. [Architecture Documentation Index](docs/INDEX.md)
2. [Rendered AWS Architecture Diagram Gallery](docs/diagrams/README.md)
3. [Repository Index](INDEX.md)
4. [Learning Path](LEARNING_PATH.md)
5. [Architecture Template](templates/ARCHITECTURE_TEMPLATE.md)
6. [Diagram Standards](standards/DIAGRAM_STANDARDS.md)
7. [Public Repository Safety](standards/PUBLIC_REPOSITORY_SAFETY.md)

## Architecture Diagrams

The handbook uses two diagram formats:

- **Rendered SVG previews** under `docs/diagrams/rendered/` — these are the primary GitHub-viewable architecture diagrams and should be used in articles and reviews.
- **PlantUML source** under `docs/diagrams/aws-icon/` — these are editable source artifacts and will display as markup when opened directly on GitHub.

The GitHub Actions workflow automatically renders the AWS-icon PlantUML sources into SVG previews and refreshes the diagram gallery. The PlantUML sources use AWS service-icon definitions; structural rectangles are reserved for AWS accounts, Regions, VPCs, Availability Zones, and subnets.

## What is included

- certification-specific learning tracks
- AWS-icon annotated architecture narratives
- step-by-step configuration and validation runbooks
- case studies and business objectives
- rendered SVG architecture diagrams
- editable PlantUML architecture sources
- Jupyter notebooks
- security/privacy control guidance
- Well-Architected decision checklists
- AI-agent and MCP patterns
- honeypot and threat-detection designs

## Major Tracks

- `01-solutions-architect-professional`
- `02-developer`
- `03-security-specialty`
- `04-advanced-networking`
- `05-bedrock-agentic-ai`
- `06-data-engineering-security-analytics`
- `07-soc-architectures`
- `08-reference-architectures`
- `docs/reference-architectures`
- `docs/runbooks`
- `docs/diagrams`
- `runbooks`
- `notebooks`

## Safety

All examples are synthetic. Do not commit credentials, account IDs, private IPs, internal DNS names, customer data, CUI, PII, or production topology.
