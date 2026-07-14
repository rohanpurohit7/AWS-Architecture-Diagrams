# AWS Enterprise Architecture Index

## Reference Architectures

| Architecture | Diagram | Article | Runbook |
|---|---|---|---|
| Secure Multi-AZ Three-Tier Application | [`SVG`](diagrams/secure-multi-az-three-tier.svg) | [`Article`](reference-architectures/secure-multi-az-three-tier.md) | [`VPC foundation`](runbooks/secure-vpc-foundation.md) |
| Centralized Inspection with Transit Gateway | [`SVG`](diagrams/centralized-inspection-tgw.svg) | [`Article`](reference-architectures/centralized-inspection-tgw.md) | [`Inspection runbook`](runbooks/transit-gateway-inspection.md) |
| Security Analytics with Bedrock Agent Operations | [`SVG`](diagrams/security-analytics-bedrock-agent.svg) | [`Article`](reference-architectures/security-analytics-bedrock-agent.md) | [`Analytics runbook`](runbooks/security-analytics-bedrock.md) |

## Architecture Reading Order

1. Begin with the business objective.
2. Review performance, availability, security, privacy, and cost requirements.
3. Open the architecture SVG and identify boundaries before services.
4. Trace ingress, east-west, egress, data, and telemetry flows.
5. Follow the configuration runbook.
6. Execute validation commands.
7. Review failure scenarios and rollback.
8. Complete the Well-Architected assessment.

## Planned Pattern Families

```text
patterns/
├── networking/
│   ├── vpc-and-subnet-foundation
│   ├── transit-gateway-hub-spoke
│   ├── direct-connect-vpn
│   ├── privatelink-and-endpoints
│   └── route53-global-accelerator
├── applications/
│   ├── three-tier
│   ├── serverless-event-driven
│   ├── eks-platform
│   └── multi-region-active-active
├── security/
│   ├── centralized-inspection
│   ├── zero-trust
│   ├── security-lake-siem
│   └── honeypot-deception
├── data-ai/
│   ├── streaming-lakehouse
│   ├── bedrock-rag
│   ├── agentic-security-operations
│   └── anomaly-detection
└── resilience/
    ├── backup-restore
    ├── pilot-light
    ├── warm-standby
    └── active-active
```
