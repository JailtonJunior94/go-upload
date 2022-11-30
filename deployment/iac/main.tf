terraform {
  backend "s3" {
    bucket = "storageterraformjj"
    key    = "fullcycle-go-s3-infra/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.43.0"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
}
