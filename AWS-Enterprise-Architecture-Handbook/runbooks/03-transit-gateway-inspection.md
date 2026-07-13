# Transit Gateway and Inspection VPC

## Flow
Spoke VPC → Transit Gateway → Inspection VPC → Firewall → NAT/Internet

## Steps
1. Create Transit Gateway.
2. Attach workload VPCs.
3. Create segmented TGW route tables.
4. Attach inspection VPC.
5. Enable appliance mode.
6. Route workload egress to inspection attachment.
7. Route inspected traffic to NAT/IGW.
8. Send firewall logs to S3/OpenSearch/SIEM.
9. Test symmetry and failover.
