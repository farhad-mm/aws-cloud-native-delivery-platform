provider "aws" {
  region  = var.aws_region
  profile = "terraform-dev"

  default_tags {
    tags = local.common_tags
  }
}
