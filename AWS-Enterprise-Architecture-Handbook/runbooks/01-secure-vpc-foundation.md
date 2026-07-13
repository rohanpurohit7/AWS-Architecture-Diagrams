# Secure VPC Foundation Runbook

## Objective
Provision a two-AZ VPC with public, private application, and isolated data subnets.

## Steps

1. Create VPC CIDR `10.20.0.0/16`.
2. Create public subnets in two AZs.
3. Create private application subnets in two AZs.
4. Create isolated data subnets in two AZs.
5. Attach an Internet Gateway.
6. Create one NAT Gateway per AZ for resilience.
7. Create route tables and associate subnets.
8. Apply NACLs for coarse subnet controls.
9. Apply security groups for stateful workload controls.
10. Add VPC endpoints for S3, ECR, CloudWatch, SSM, Secrets Manager.
11. Enable VPC Flow Logs.
12. Send logs to CloudWatch Logs or S3.
13. Add AWS Network Firewall or centralized inspection as required.

## Validation

```bash
aws ec2 describe-vpcs
aws ec2 describe-subnets
aws ec2 describe-route-tables
aws ec2 describe-network-acls
aws ec2 describe-security-groups
```

## Security Notes
NACLs are not a replacement for security groups. Prefer endpoints over NAT for AWS service access. Restrict egress.
