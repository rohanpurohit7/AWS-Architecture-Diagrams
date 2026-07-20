# Zero Trust Identity Validation Runbook

Visual architecture: `../diagrams/aws-icon/security-zero-trust-identity.puml`

## Test Cases
1. Authorized user on trusted device accesses an approved application.
2. Authorized user on untrusted device is denied or challenged according to policy.
3. Unauthorized group member is denied.
4. Workload role can access only required resources.
5. Private service is unreachable over the public internet.
6. Secrets rotate without embedding credentials in source code.

## AWS Validation
```bash
aws sso-admin list-permission-sets --instance-arn <instance-arn>
aws iam list-roles
aws ec2 describe-vpc-endpoints
aws secretsmanager list-secrets
aws cloudtrail lookup-events --max-results 20
```

## Evidence
Capture policy name, identity, application, timestamp, expected decision, observed decision, and CloudTrail event reference.

## Exit Criteria
- No broad standing credentials.
- Application access is identity-aware.
- Workload permissions are least privilege.
- Private services remain private.
- Sensitive secrets are managed and auditable.