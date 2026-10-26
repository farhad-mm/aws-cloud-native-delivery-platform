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
  description = "IDs of the public subnets for internet-facing load balancers."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets for EKS nodes and internal workloads."
  value       = aws_subnet.private[*].id
}
