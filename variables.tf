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

variable "vpc_cidr" {
  description = "CIDR block for the project VPC."
  type        = string
  default     = "10.20.0.0/16"
}

variable "availability_zones" {
  description = "Two Availability Zones used for high availability."
  type        = list(string)
  default     = ["eu-north-1a", "eu-north-1b"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for internet-facing load balancers."
  type        = list(string)
  default     = ["10.20.0.0/24", "10.20.1.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks reserved for EKS worker nodes and Pods."
  type        = list(string)
  default     = ["10.20.10.0/24", "10.20.11.0/24"]
}
