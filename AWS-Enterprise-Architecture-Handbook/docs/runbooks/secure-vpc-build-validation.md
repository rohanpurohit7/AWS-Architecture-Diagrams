# Secure VPC Build and Validation Runbook

Architecture: `../diagrams/aws-icon/secure-vpc-reference.puml`

## Target State
- Multi-AZ VPC.
- Public subnets for edge components only.
- Private application subnets for compute.
- Isolated data subnets for databases.
- VPC endpoints for private AWS service access.
- Central logging and inspection where required.

## Build Steps
1. Create a non-overlapping VPC CIDR.
2. Create public, private application, and isolated data subnets in at least two Availability Zones.
3. Attach an Internet Gateway to the VPC.
4. Create NAT Gateways per Availability Zone when outbound internet access is required.
5. Create separate route tables for public, application, and data tiers.
6. Route public internet traffic to the Internet Gateway.
7. Route application outbound traffic through same-AZ NAT or approved inspection.
8. Keep data subnets without a default internet route.
9. Apply NACLs for coarse stateless subnet controls.
10. Apply security groups for stateful workload controls.
11. Add VPC endpoints for supported AWS services.
12. Enable VPC Flow Logs and central log delivery.
13. Configure private DNS where required.
14. Add Network Firewall or centralized inspection when the design calls for it.

## Validation
```bash
aws ec2 describe-vpcs
aws ec2 describe-subnets
aws ec2 describe-route-tables
aws ec2 describe-network-acls
aws ec2 describe-security-groups
aws ec2 describe-vpc-endpoints
```

Confirm that application workloads have no unintended public exposure, database endpoints are private, egress follows the intended path, isolated subnets lack direct internet routes, and flow logs arrive at the configured destination.