output "aws_region" {
  description = "AWS Region where the infrastructure is deployed."
  value       = var.aws_region
}

output "project_name" {
  description = "Project name used in resource naming and tagging."
  value       = var.project_name
}

output "vpc_id" {
  description = "ID of the project VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets for internet-facing resources."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of private subnets for EKS nodes and internal workloads."
  value       = aws_subnet.private[*].id
}

output "nat_gateway_ids" {
  description = "IDs of NAT Gateways that provide private-subnet outbound access."
  value       = aws_nat_gateway.main[*].id
}

output "nat_gateway_public_ips" {
  description = "Public Elastic IP addresses used by the NAT Gateways."
  value       = aws_eip.nat[*].public_ip
}
