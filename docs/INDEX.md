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
- `diagrams/aws-icon/sa-pro-multi-account-landing-zone.puml`
- `diagrams/aws-icon/security-zero-trust-identity.puml`
- `diagrams/aws-icon/networking-private-service-access.puml`
- `diagrams/aws-icon/bedrock-multi-agent-operations.puml`
- `diagrams/aws-icon/security-analytics-lakehouse.puml`
- `diagrams/aws-icon/sa-pro-disaster-recovery.puml`
- `diagrams/aws-icon/edge-global-delivery.puml`
- `diagrams/aws-icon/serverless-data-lake-analytics.puml`
- `diagrams/aws-icon/hybrid-dns-private-connectivity.puml`

## Reference Architecture Articles

- `reference-architectures/secure-multi-az-application.md`
- `reference-architectures/global-multi-region-active-active.md`
- `reference-architectures/transit-gateway-inspection-vpc.md`
- `reference-architectures/bedrock-rag-agent-security.md`
- `reference-architectures/honeypot-security-lake.md`
- `reference-architectures/security-specialty-central-soc.md`
- `reference-architectures/developer-event-driven-platform.md`
- `reference-architectures/advanced-networking-hybrid-connectivity.md`
- `reference-architectures/sa-pro-multi-account-landing-zone.md`
- `reference-architectures/security-zero-trust-identity.md`
- `reference-architectures/networking-private-service-access.md`
- `reference-architectures/bedrock-multi-agent-operations.md`
- `reference-architectures/security-analytics-lakehouse.md`
- `reference-architectures/sa-pro-disaster-recovery.md`
- `reference-architectures/edge-global-delivery.md`
- `reference-architectures/serverless-data-lake-analytics.md`
- `reference-architectures/hybrid-dns-private-connectivity.md`

## Visual Runbooks and Validation

- `runbooks/secure-vpc-build-validation.md`
- `runbooks/eks-prometheus-observability.md`
- `runbooks/security-soc-validation.md`
- `runbooks/hybrid-networking-validation.md`
- `runbooks/event-driven-platform-validation.md`
- `runbooks/multi-account-landing-zone-validation.md`
- `runbooks/zero-trust-identity-validation.md`
- `runbooks/privatelink-service-validation.md`
- `runbooks/bedrock-agent-safety-validation.md`
- `runbooks/security-analytics-pipeline-validation.md`
- `runbooks/disaster-recovery-game-day.md`
- `runbooks/edge-global-delivery-validation.md`
- `runbooks/serverless-data-lake-validation.md`
- `runbooks/hybrid-dns-private-connectivity-validation.md`

## Diagram Rendering Automation

- Source diagrams: `docs/diagrams/aws-icon/*.puml`
- Rendered output: `docs/diagrams/rendered/`
- Local render script: `scripts/render-aws-diagrams.sh`
- GitHub Actions workflow: `.github/workflows/render-aws-diagrams.yml`

The workflow is configured to regenerate SVG previews whenever AWS-icon PlantUML sources change, and the local script provides the same render path for manual development environments with PlantUML and Graphviz installed.

## Certification Alignment

### Solutions Architect Professional
- Secure multi-AZ application
- Multi-account landing zone
- Global multi-region active-active
- Edge/global delivery
- Disaster recovery and game-day validation
- Transit Gateway inspection
- Serverless data lake and analytics

### Security Specialty
- Central SOC
- Zero Trust identity
- Honeypot and Security Lake
- Security analytics lakehouse
- Agentic security operations controls
- WAF/Shield edge protection
- Central logging and encrypted analytics

### Advanced Networking
- Secure VPC foundation
- Transit Gateway inspection VPC
- Hybrid Direct Connect/VPN connectivity
- PrivateLink service access
- Route 53 Resolver hybrid DNS
- Edge routing with Route 53 and Global Accelerator

### Developer
- Event-driven serverless platform
- Serverless data ingestion and processing
- EKS observability
- Bedrock application and agent integration

## Recommended Reading Order

1. Secure multi-AZ VPC foundation.
2. Multi-account landing zone.
3. Zero Trust identity and private access.
4. Transit Gateway and centralized inspection.
5. Hybrid connectivity, DNS, and PrivateLink.
6. Edge/global delivery and multi-region routing.
7. Event-driven application architecture.
8. Serverless data lake and analytics.
9. Central SOC and Security Lake.
10. Security analytics lakehouse with KNN/ensemble detection.
11. Honeypot and deception architecture.
12. EKS observability with Prometheus/Grafana.
13. Bedrock RAG and multi-agent security operations.
14. Global multi-region resilience and DR game day.

## Architecture Standard

Service components use AWS icon-based PlantUML definitions sourced from the AWS Labs AWS Icons for PlantUML library. Rectangular boundaries are reserved for structural concepts such as AWS accounts, Regions, VPCs, Availability Zones, and subnets. Each major pattern is paired with a narrative article and, where operationally useful, a validation runbook.
