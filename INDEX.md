# AWS Architecture Repository Index

## Navigation Tree

```text
README.md
INDEX.md
├── certifications/
│   ├── solutions-architect-professional/README.md
│   ├── developer/README.md
│   ├── security-specialty/README.md
│   └── advanced-networking-specialty/README.md
├── case-studies/
│   ├── enterprise-security-data-platform.md
│   └── honeypot-detection-platform.md
├── runbooks/
│   ├── secure-vpc-security-analytics.md
│   └── bedrock-mcp-security-agents.md
└── diagrams/
    ├── enterprise-reference-architecture.svg
    ├── agentic-security-operations.svg
    └── honeypot-security-architecture.svg
```

## Recommended Learning Path

1. Review the four certification track maps.
2. Study the enterprise case study and its nonfunctional requirements.
3. Follow the secure VPC runbook step by step.
4. Study the event, Kafka, SIEM and ML detection pipeline.
5. Review Bedrock and MCP agent integration.
6. Review the honeypot architecture and response controls.
7. Use the SVG diagrams as visual architecture review aids.

## Cross-Certification Pattern Matrix

| Pattern | SA Professional | Developer | Security | Networking |
|---|---:|---:|---:|---:|
| Multi-account landing zone | High | Medium | High | Medium |
| Multi-AZ application | High | High | Medium | Medium |
| VPC routing and inspection | High | Low | High | High |
| Event-driven services | High | High | Medium | Low |
| CI/CD and deployment | Medium | High | High | Low |
| Encryption and IAM | High | High | High | Medium |
| Central logging and SIEM | High | Medium | High | Medium |
| Direct Connect and Transit Gateway | High | Low | Medium | High |
| Bedrock and agentic operations | Medium | High | High | Low |
| Resilience and disaster recovery | High | Medium | High | High |

## Architecture Quality Lens

Every design should explicitly address:

- performance and latency
- horizontal and vertical scalability
- fault isolation and recovery objectives
- identity, network, application and data security
- privacy, minimization, retention and sovereignty
- observability, incident response and auditability
- cost allocation and operational sustainability
