# configure aws provider
provider "aws" {
  region = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "tuanphdvs3-terraform-state"
    key            = "eks.terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = "true"
    dynamodb_table = "tuanphdvdynamo-terraform-state"
  }
}
