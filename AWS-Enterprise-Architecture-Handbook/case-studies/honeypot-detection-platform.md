# Case Study: Honeypot Detection Platform

## Goal
Collect adversary behavior safely in an isolated environment and turn it into detection content.

## Architecture
Internet → WAF/ALB → isolated honeypot workloads → Flow Logs/host logs → Kinesis → S3/Security Lake → OpenSearch → threat intelligence → analyst review.
