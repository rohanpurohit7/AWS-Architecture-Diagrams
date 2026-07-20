# EKS Prometheus, Grafana, Logging, and Alerting Runbook

![Architecture source](../diagrams/aws-icon/eks-prometheus-observability.puml)

## Objective

Configure Amazon EKS observability with Amazon Managed Service for Prometheus (AMP), Amazon Managed Grafana, CloudWatch, SNS, and encrypted long-term log storage.

## Architecture

- EKS runs in private subnets across multiple Availability Zones.
- ADOT or a Prometheus collector scrapes application and cluster metrics.
- Metrics are remotely written to AMP.
- Amazon Managed Grafana queries AMP and CloudWatch.
- Alerts route through SNS to approved notification and incident systems.
- Logs are retained in CloudWatch and archived to encrypted S3 storage.

## Configuration Steps

### 1. Create the AMP workspace

```bash
aws amp create-workspace --alias enterprise-eks-monitoring
aws amp list-workspaces
```

### 2. Configure workload identity

Create an IAM role for service accounts with the minimum AMP remote-write permissions. Associate the role with the collector service account rather than using node credentials.

### 3. Install the collector

Deploy the AWS Distro for OpenTelemetry collector or a Prometheus-compatible collector to the EKS cluster. Configure discovery for approved namespaces and service monitors.

### 4. Configure remote write

Set the AMP remote-write endpoint and SigV4 authentication. Do not embed static AWS credentials in Kubernetes manifests.

### 5. Create Managed Grafana

```bash
aws grafana create-workspace \
  --workspace-name enterprise-observability \
  --account-access-type CURRENT_ACCOUNT \
  --authentication-providers AWS_SSO \
  --permission-type SERVICE_MANAGED
```

Add AMP and CloudWatch as data sources and restrict workspace roles through IAM Identity Center.

### 6. Build dashboards

Minimum dashboard panels:

- desired versus available replicas
- pod restart count
- node CPU and memory saturation
- application request rate
- p50, p95, and p99 latency
- HTTP 4xx and 5xx rate
- queue depth or consumer lag
- deployment rollout status

### 7. Configure alerts

Recommended alert conditions:

```promql
kube_deployment_status_replicas_unavailable > 0
rate(container_cpu_usage_seconds_total[5m]) > 0.8
sum(rate(http_requests_total{status=~"5.."}[5m])) > 5
histogram_quantile(0.95, sum(rate(http_request_duration_seconds_bucket[5m])) by (le)) > 1
```

Route production alerts through SNS to the on-call platform. Include deduplication, severity, owner, runbook URL, and service name.

### 8. Configure logs

Enable EKS control-plane logs, application structured logs, and CloudWatch Container Insights as required. Apply retention rules and export approved logs to encrypted S3 storage.

## Validation

```bash
kubectl get pods -A
kubectl get servicemonitors -A
aws amp list-workspaces
aws grafana list-workspaces
aws cloudwatch describe-alarms
aws sns list-topics
```

## Security and Privacy

- redact tokens, email addresses, and customer identifiers from logs
- use private EKS endpoints where operationally feasible
- encrypt metrics and logs at rest
- separate viewer, editor, and administrator roles
- prohibit secrets in dashboard variables
- retain telemetry only as long as required

## Failure Testing

Delete a test pod, generate controlled 5xx traffic, exhaust a test CPU limit, and verify collection, dashboard visibility, alert generation, notification delivery, and recovery evidence.