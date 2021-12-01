# output

# data
data "aws_availability_zones" "available" {
  state = "available"
}

# providers
provider "aws" {
  region     = "eu-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# resources
resource "aws_vpc" "main" {
  cidr_block         = var.vpc_cidr_block
  instance_tenancy   = "default"
  enable_dns_support = true
}
