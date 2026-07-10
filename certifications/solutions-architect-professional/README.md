# AWS Solutions Architect Professional — Pattern Map

## Core Architecture Areas

### Organizational architecture

- AWS Organizations and multi-account separation
- Control Tower-style landing zone concepts
- centralized identity and delegated administration
- shared services, network, security, logging and workload accounts
- service control policies, tag policies and cost allocation

### Resilient application platforms

- multi-AZ and multi-Region architecture
- Route 53 health checks and routing policies
- CloudFront, Global Accelerator and edge caching
- ALB/NLB, Auto Scaling, ECS, EKS and Lambda
- RDS/Aurora, DynamoDB, ElastiCache and S3 patterns
- backup, pilot-light, warm-standby and active-active recovery

### Migration and modernization

- rehost, replatform, refactor, retain and retire decisions
- hybrid connectivity and staged cutovers
- database migration and replication
- event-driven decomposition and strangler patterns

### Data and AI platforms

- S3 data lake and governed analytics
- Glue, Athena, EMR, Redshift, Kinesis and MSK
- Bedrock foundation models, knowledge bases and guardrails
- SageMaker or managed ML pipelines for custom analytics

## Applied Design Checklist

For every case study, document:

1. business capabilities and users
2. availability and recovery objectives
3. latency and throughput targets
4. data classification and privacy constraints
5. account and network boundaries
6. scaling model and bottlenecks
7. observability and operational ownership
8. cost drivers and optimization controls

## Case Study Connection

Use the enterprise security data platform case study to practice a multi-account, event-driven, multi-AZ design that combines application delivery, security inspection, streaming analytics, SIEM, ML detection and Bedrock-assisted operations.
