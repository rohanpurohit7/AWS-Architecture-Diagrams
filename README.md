# AWS Enterprise Architecture Learn

A practical AWS architecture handbook organized around **reference architectures, configuration runbooks, certification patterns, security controls, and operational validation**.

The repository uses AWS architecture conventions rather than generic box flows:

- AWS account and Region boundaries
- VPC CIDR boundaries
- Availability Zones
- public, private application, inspection, and isolated data subnets
- route tables, Internet Gateway, NAT Gateway, Transit Gateway, and VPC endpoints
- load balancers, compute services, databases, observability, and security services
- explicit ingress, egress, telemetry, and trust flows

## Start Here

- [Repository Index](INDEX.md)
- [Architecture Article Template](templates/ARCHITECTURE_ARTICLE_TEMPLATE.md)
- [Secure Multi-AZ Three-Tier Application](reference-architectures/secure-multi-az-three-tier.md)
- [Centralized Inspection and Transit Gateway](reference-architectures/centralized-inspection-tgw.md)
- [Security Analytics and Bedrock Agent Operations](reference-architectures/security-analytics-bedrock-agent.md)

## Visual Architecture Library

- [Secure Multi-AZ Three-Tier SVG](diagrams/secure-multi-az-three-tier.svg)
- [Centralized Inspection SVG](diagrams/centralized-inspection-tgw.svg)
- [Security Analytics and Bedrock SVG](diagrams/security-analytics-bedrock-agent.svg)

## Runbooks

- [VPC, Subnets, Routes, NACLs, Security Groups, and NAT](runbooks/secure-vpc-foundation.md)
- [Transit Gateway and Centralized Firewall Inspection](runbooks/transit-gateway-inspection.md)
- [Security Lake, OpenSearch, and Bedrock Agent Monitoring](runbooks/security-analytics-bedrock.md)

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

> All account IDs, CIDRs, names, and workloads in this repository are synthetic learning examples. Never publish live credentials, customer data, CUI, PII, private DNS names, or production topology.
