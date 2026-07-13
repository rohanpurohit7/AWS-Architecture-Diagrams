# Honeypot Deployment Runbook

1. Create isolated honeypot VPC/account.
2. Deny connectivity to production networks.
3. Permit only monitored inbound services.
4. Capture VPC Flow Logs, host logs, and packet metadata.
5. Stream findings to Security Lake/OpenSearch.
6. Enrich with threat intelligence.
7. Detect patterns with rules and ML.
8. Never allow automated pivoting from honeypot to production.
9. Apply legal and privacy review.
