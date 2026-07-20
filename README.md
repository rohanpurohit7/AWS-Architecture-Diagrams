# AWS Enterprise Architecture Learn

This repository is organized around one canonical content root:

## [AWS Enterprise Architecture Handbook](AWS-Enterprise-Architecture-Handbook/README.md)

All reference architectures, configuration runbooks, certification patterns, AWS-icon diagram sources, rendered SVG previews, notebooks, standards, templates, and case studies are consolidated under `AWS-Enterprise-Architecture-Handbook/`.

Repository-level `.github/` remains outside the handbook because GitHub requires workflows at the repository root.

## Start Here

- [Handbook Home](AWS-Enterprise-Architecture-Handbook/README.md)
- [Architecture Documentation Index](AWS-Enterprise-Architecture-Handbook/docs/INDEX.md)
- [Rendered AWS Architecture Gallery](AWS-Enterprise-Architecture-Handbook/docs/diagrams/README.md)
- [Reference Architectures](AWS-Enterprise-Architecture-Handbook/docs/reference-architectures/)
- [Visual Validation Runbooks](AWS-Enterprise-Architecture-Handbook/docs/runbooks/)
- [Editable AWS-icon PlantUML Sources](AWS-Enterprise-Architecture-Handbook/docs/diagrams/aws-icon/)

> **Diagram viewing:** GitHub displays `.puml` files as source markup. Use the rendered SVG gallery for visual diagrams. The `.puml` files are retained as editable architecture-as-code sources.

## Architecture Quality Standard

Every pattern should document:

1. case study and business objective
2. functional and nonfunctional requirements
3. account, Region, VPC, subnet, and trust boundaries
4. traffic and data flows
5. performance and scalability approach
6. security and privacy controls
7. step-by-step configuration
8. monitoring and alerting
9. validation and rollback
10. cost, resilience, and Well-Architected considerations

> All account IDs, CIDRs, names, and workloads are synthetic learning examples. Never publish live credentials, customer data, CUI, PII, private DNS names, or production topology.
