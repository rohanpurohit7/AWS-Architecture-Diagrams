# NACL, NAT, and NGFW Runbook

## NACL
- stateless
- ordered rules
- subnet-level boundary
- remember ephemeral ports

## NAT Gateway
- outbound internet access from private subnets
- one per AZ for HA
- route private subnet `0.0.0.0/0` to local NAT

## NGFW / Inspection VPC
- route spoke VPC egress through Transit Gateway
- inspect traffic in centralized inspection VPC
- use AWS Network Firewall or partner NGFW
- log allowed and denied flows
- avoid asymmetric routing
