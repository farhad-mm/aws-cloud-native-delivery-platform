variable "aws_region" {
  description = "AWS Region for the development environment."
  type        = string
  default     = "eu-north-1"
}

variable "project_name" {
  description = "Short project identifier used in resource names and tags."
  type        = string
  default     = "cloud-native-platform"
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "dev"
}
