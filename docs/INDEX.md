# AWS Enterprise Architecture Documentation Index

## AWS-Icon Architecture Diagrams

- `diagrams/aws-icon/secure-vpc-reference.puml`
- `diagrams/aws-icon/security-data-platform.puml`
- `diagrams/aws-icon/global-multi-region-active-active.puml`
- `diagrams/aws-icon/transit-gateway-inspection-vpc.puml`
- `diagrams/aws-icon/bedrock-rag-agent-security.puml`
- `diagrams/aws-icon/honeypot-security-lake.puml`
- `diagrams/aws-icon/eks-prometheus-observability.puml`
- `diagrams/aws-icon/security-specialty-central-soc.puml`
- `diagrams/aws-icon/developer-event-driven-platform.puml`
- `diagrams/aws-icon/advanced-networking-hybrid-connectivity.puml`

## Reference Architecture Articles

- `reference-architectures/secure-multi-az-application.md`
- `reference-architectures/global-multi-region-active-active.md`
- `reference-architectures/transit-gateway-inspection-vpc.md`
- `reference-architectures/bedrock-rag-agent-security.md`
- `reference-architectures/honeypot-security-lake.md`
- `reference-architectures/security-specialty-central-soc.md`
- `reference-architectures/developer-event-driven-platform.md`
- `reference-architectures/advanced-networking-hybrid-connectivity.md`

## Visual Runbooks and Validation

- `runbooks/secure-vpc-build-validation.md`
- `runbooks/eks-prometheus-observability.md`
- `runbooks/security-soc-validation.md`
- `runbooks/hybrid-networking-validation.md`
- `runbooks/event-driven-platform-validation.md`

## Reading Order

1. Secure multi-AZ VPC foundation.
2. Transit Gateway and centralized inspection.
3. Hybrid connectivity validation.
4. Central security operations and Security Lake.
5. Honeypot and deception architecture.
6. Event-driven application architecture.
7. Global multi-region resilience.
8. EKS observability with Prometheus/Grafana.
9. Bedrock RAG and agent-security architecture.

## Architecture Standard

Service components use AWS icon-based PlantUML definitions. Rectangular boundaries are reserved for structural concepts such as AWS accounts, Regions, VPCs, Availability Zones, and subnets. Each major pattern is paired with a narrative article and, where operationally useful, a validation runbook.
