output "aws_region" {
  description = "AWS Region selected for this deployment."
  value       = var.aws_region
}

output "project_name" {
  description = "Project identifier used by this Terraform configuration."
  value       = var.project_name
}
