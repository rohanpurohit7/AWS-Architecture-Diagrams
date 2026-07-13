# Case Study: Global Retail Platform

## Requirements
- global users
- 99.99% availability
- low-latency browsing
- PCI-aware payment isolation
- elastic seasonal scaling
- regional failover

## Architecture
CloudFront → WAF/Shield → ALB → ECS/EKS → Aurora Global Database / DynamoDB Global Tables → S3

## Security
- centralized identity
- private subnets
- KMS encryption
- secrets management
- WAF managed rules
- GuardDuty/Security Hub
- centralized logs
