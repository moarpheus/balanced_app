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