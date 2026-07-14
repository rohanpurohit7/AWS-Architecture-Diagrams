# Architecture Name

## 1. Executive Summary

State what the architecture delivers and why the organization needs it.

## 2. Case Study

Describe the organization, users, workload, data classification, operating model, and constraints.

## 3. Business Objectives

- availability target
- latency target
- throughput target
- recovery objectives
- compliance and privacy obligations
- cost or delivery constraints

## 4. Functional Requirements

List the capabilities the system must provide.

## 5. Nonfunctional Requirements

### Performance
### Scalability
### Availability and Recovery
### Security
### Privacy
### Observability
### Cost Governance

## 6. Architecture Diagram

Link to an SVG showing account, Region, VPC, Availability Zone, subnet, service, route, trust, and telemetry boundaries.

## 7. Technical Approach

Explain ingress, application processing, data persistence, egress, administration, and telemetry flows.

## 8. Network and Addressing Plan

| Boundary | Example CIDR | Purpose |
|---|---|---|
| VPC | `10.20.0.0/16` | workload boundary |
| Public AZ-A | `10.20.0.0/24` | ALB and NAT |
| Public AZ-B | `10.20.1.0/24` | ALB and NAT |
| Private App AZ-A | `10.20.10.0/24` | compute |
| Private App AZ-B | `10.20.11.0/24` | compute |
| Isolated Data AZ-A | `10.20.20.0/24` | database/cache |
| Isolated Data AZ-B | `10.20.21.0/24` | database/cache |

## 9. Step-by-Step Configuration

1. account and IAM preparation
2. VPC and subnets
3. gateways and route tables
4. NACLs and security groups
5. endpoints and DNS
6. workload deployment
7. data services
8. security services
9. monitoring and alerting
10. validation and rollback

## 10. Security and Privacy Controls

Map controls to identity, network, application, data, detection, recovery, retention, and privacy.

## 11. Monitoring and Alerting

Define metrics, logs, traces, dashboards, alarms, and on-call ownership.

## 12. Validation

Provide CLI checks, synthetic tests, failure tests, and expected results.

## 13. Failure Scenarios and Recovery

Explain AZ loss, dependency failure, credential compromise, traffic spike, data corruption, and rollback.

## 14. Cost Drivers

Identify NAT, data transfer, logging, inspection, compute, database, storage, and observability costs.

## 15. AWS Well-Architected Review

Assess operational excellence, security, reliability, performance efficiency, cost optimization, and sustainability.

## 16. Certification and Interview Notes

List the certification domains and architecture tradeoffs demonstrated by the pattern.
