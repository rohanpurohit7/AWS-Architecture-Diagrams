# AWS Icon Architecture Diagrams

This folder contains architecture-as-code diagrams that use the AWS Labs PlantUML icon library generated from the official AWS Architecture Icons.

## Rendering

Use PlantUML in IntelliJ IDEA, VS Code, Cursor, or a local PlantUML CLI. The diagram sources reference the versioned AWS Labs icon release:

```text
https://raw.githubusercontent.com/awslabs/aws-icons-for-plantuml/v23.0/dist
```

Render an individual diagram with:

```bash
plantuml docs/diagrams/aws-icon/secure-vpc-reference.puml
```

## Visual Standard

- AWS service icons represent services and managed resources.
- Rectangles and packages represent AWS accounts, Regions, VPCs, Availability Zones, and subnets only.
- Public, private application, and isolated data subnets are labeled explicitly.
- Ingress, egress, inspection, logging, and control-plane paths are shown separately.
- Security and privacy controls are documented in the associated architecture article and runbook.

## Associated Articles

- `docs/reference-architectures/secure-multi-az-application.md`
- `docs/reference-architectures/security-data-platform.md`
- `docs/reference-architectures/honeypot-detection-platform.md`
