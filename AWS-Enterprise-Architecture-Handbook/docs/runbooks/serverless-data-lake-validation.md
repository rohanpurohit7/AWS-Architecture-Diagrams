# Serverless Data Lake Validation Runbook

Architecture: `../diagrams/aws-icon/serverless-data-lake-analytics.puml`

## Validation Commands
```bash
aws kinesis list-streams
aws events list-event-buses
aws lambda list-functions
aws s3api list-buckets
aws glue get-databases
aws athena list-work-groups
aws opensearch list-domain-names
```

## Test Sequence
1. Publish a synthetic event to Kinesis or EventBridge.
2. Confirm the Lambda processor receives the event.
3. Verify the raw event is written to S3.
4. Trigger or wait for the Glue transformation.
5. Verify curated output and partition registration.
6. Run an Athena query against the curated table.
7. Confirm selected fields are indexed in OpenSearch.
8. Submit malformed data and verify DLQ/quarantine behavior.

## Security Validation
- Confirm S3 Block Public Access.
- Confirm bucket and KMS policies deny unapproved principals.
- Confirm Lambda roles cannot read unrelated datasets.
- Confirm Athena workgroups encrypt query results.
- Confirm logging excludes or masks unnecessary sensitive fields.

## Reliability Validation
- Test Kinesis throttling or burst conditions.
- Test Lambda failure and retry behavior.
- Test Glue job failure and restart procedures.
- Verify raw data remains available for replay.

## Cost Validation
- Review Athena bytes scanned.
- Review OpenSearch storage and instance utilization.
- Review Kinesis capacity mode.
- Review S3 lifecycle configuration.