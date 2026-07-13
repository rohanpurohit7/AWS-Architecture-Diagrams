# Prometheus and Grafana on AWS

## Option A: Amazon Managed Service for Prometheus
1. Create AMP workspace.
2. Configure EKS service account with IAM role.
3. Deploy ADOT Collector or Prometheus remote-write.
4. Create Amazon Managed Grafana workspace.
5. Add AMP as a data source.
6. Import dashboards.
7. Create alerts through Grafana or Alertmanager.
8. Route alerts to SNS, PagerDuty, Slack, or ticketing.

## Option B: kube-prometheus-stack
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm upgrade --install monitoring prometheus-community/kube-prometheus-stack   --namespace monitoring --create-namespace
```

## Core Metrics
- pod availability
- CPU and memory
- request rate
- p95 latency
- 5xx error rate
- deployment replicas unavailable
- node pressure
- queue lag
