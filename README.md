# AWS Architecture Patterns, Security Analytics, and Agentic Operations

A structured AWS architecture learning repository organized around four certification tracks and applied enterprise case studies:

- AWS Solutions Architect Professional
- AWS Developer
- AWS Security Specialty
- AWS Advanced Networking Specialty

The repository now moves beyond isolated diagrams. It explains how architecture choices support performance, scalability, security, privacy, resilience, operations, and cost governance.

## Start Here

- [Repository Index](INDEX.md)
- [Enterprise Reference Architecture](case-studies/enterprise-security-data-platform.md)
- [VPC, NACL, NAT, NGFW and SIEM Runbook](runbooks/secure-vpc-security-analytics.md)
- [Bedrock and MCP Agent Operations](runbooks/bedrock-mcp-security-agents.md)
- [Honeypot and Threat Intelligence Architecture](case-studies/honeypot-detection-platform.md)

## Learning Tracks

```text
certifications/
├── solutions-architect-professional/
├── developer/
├── security-specialty/
└── advanced-networking-specialty/
```

## Architecture Themes

```text
Business and regulatory requirements
        ↓
Multi-account landing zone and identity
        ↓
VPC, routing, NACLs, security groups, NAT, DNS
        ↓
Cloud firewall, NGFW and inspection VPC
        ↓
Application and data platforms
        ↓
Kafka / event streams / data engineering feeds
        ↓
SIEM, detection engineering and ML anomaly analysis
        ↓
Bedrock agents, MCP tools and intelligent response
        ↓
Prometheus, CloudWatch, OpenSearch and operational governance
```

## Public Repository Safety

Examples use synthetic names and placeholders. Do not commit credentials, AWS account IDs, private IP addresses, internal DNS names, customer data, CUI, PII, production topology, or security-tool secrets.
