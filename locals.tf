locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Repository  = "aws-cloud-native-delivery-platform"
    Owner       = "Farhad Wais"
  }
}
