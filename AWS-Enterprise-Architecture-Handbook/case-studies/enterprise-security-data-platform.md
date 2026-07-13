# Case Study: Enterprise Security Data Platform

## Data Sources
CloudTrail, VPC Flow Logs, GuardDuty, EKS audit logs, WAF, endpoint telemetry, honeypots.

## Pipeline
Kinesis/MSK → Glue/Spark → S3/Security Lake → OpenSearch → KNN/ensemble detection → Security Hub → SOAR.

## AI
Bedrock agent summarizes alerts, enriches context through MCP tools, drafts response steps, and requests human approval before containment.
