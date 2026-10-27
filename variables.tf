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
variable "enable_nat_gateway" {
  description = "Whether to create one NAT Gateway in each public subnet."
  type        = bool
  default     = true
}
variable "admin_cidr" {
  description = "Your public IP address allowed to access the EKS API, in CIDR format."
  type        = string
  default     = "127.0.0.1/32"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster. Use a version in standard support to avoid extended-support charges."
  type        = string
  default     = "1.35"
}

variable "node_instance_types" {
  description = "EC2 instance types for the managed node group."
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_desired_size" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}

variable "node_min_size" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 2
}

variable "node_max_size" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 3
}

variable "admin_principal_arn" {
  description = "ARN of the IAM user or role that receives cluster-admin access to the EKS cluster."
  type        = string

  validation {
    condition     = can(regex("^arn:aws:iam::[0-9]{12}:(user|role)/", var.admin_principal_arn))
    error_message = "Provide the ARN of an IAM user or role."
  }
}
