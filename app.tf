# vars
# providers
# data
# resources
# output

provider "aws" {
  region     = "eu-west-2"
  access_key = vars.aws_access_key
  secret_key = vars.aws_secret_key
}

resource "aws_vpc" "main" {
  cidr_block       = vars.cidr_block
  instance_tenancy = "default"
  enable_dns_support = true
}