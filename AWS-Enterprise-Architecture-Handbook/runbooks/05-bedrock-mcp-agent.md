# Bedrock + MCP Security Agent Runbook

## Architecture
Security findings → EventBridge → Lambda/Step Functions → Bedrock Agent → MCP tools → ticketing / enrichment / containment approval

## Guardrails
- allowlisted tools only
- read-only by default
- human approval before containment
- prompt-injection filtering
- least-privilege IAM
- immutable audit logs
- source provenance in responses
