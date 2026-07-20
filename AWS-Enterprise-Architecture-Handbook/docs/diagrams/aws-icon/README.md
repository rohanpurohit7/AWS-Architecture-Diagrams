# AWS Icon Architecture Diagrams

This folder contains architecture-as-code diagrams that use the AWS Labs PlantUML icon library generated from the official AWS Architecture Icons.

## Rendering

The diagram sources reference the versioned AWS Labs icon release:

```text
https://raw.githubusercontent.com/awslabs/aws-icons-for-plantuml/v23.0/dist
```

From the repository root, render all diagrams with:

```bash
bash AWS-Enterprise-Architecture-Handbook/scripts/render-aws-diagrams.sh
```

The rendered SVG output is written to:

```text
AWS-Enterprise-Architecture-Handbook/docs/diagrams/rendered/
```

## Visual Standard

- AWS service icons represent AWS services and managed resources.
- Rectangles and packages represent structural boundaries such as accounts, Regions, VPCs, Availability Zones, and subnets.
- Ingress, egress, inspection, logging, and control-plane paths should be clearly labeled.
- Security, privacy, resilience, cost, and operational controls are documented in the associated architecture article and runbook.

## Related Content

- Reference architectures: `../../reference-architectures/`
- Validation runbooks: `../../runbooks/`
- Rendered gallery: `../README.md`
