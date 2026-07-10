# AWS Developer — Application and Delivery Pattern Map

## Application Patterns

- Lambda, API Gateway and event-driven serverless workflows
- ECS/EKS containerized services
- SQS, SNS, EventBridge, Step Functions and Kinesis
- DynamoDB access patterns, conditional writes and streams
- S3 event processing and presigned access
- Cognito-based identity for applications

## Delivery Patterns

- source → build → test → artifact → deploy
- CodePipeline/CodeBuild/CodeDeploy or GitHub/Jenkins integration
- blue/green, canary and rolling releases
- immutable images in ECR
- parameter and secret injection through managed services
- automated rollback based on alarms

## Observability and Reliability

- structured application logging
- CloudWatch metrics, alarms and dashboards
- X-Ray or OpenTelemetry traces
- DLQs, retries, idempotency and backoff
- deployment health checks and synthetic tests

## Secure Development

- least-privilege runtime roles
- KMS encryption and Secrets Manager/Parameter Store
- dependency and image scanning
- input validation, WAF and API throttling
- signed artifacts and traceable release evidence

## Bedrock Application Patterns

- prompt orchestration and guardrails
- retrieval-augmented generation with governed knowledge sources
- tool-using agents with bounded permissions
- human approval for high-impact actions
- model invocation logging, evaluation and cost controls

## Applied Exercise

Use the Bedrock and MCP security-agent runbook to prototype an agent that reads approved security findings, enriches them through tools, summarizes risk, opens a ticket and requests human approval before containment.
