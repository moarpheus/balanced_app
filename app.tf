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
  enable_dns_support = true
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1
  availability_zone = data.aws_availability_zones.available.names[0]
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2
  availability_zone = data.aws_availability_zones.available.names[1]
}