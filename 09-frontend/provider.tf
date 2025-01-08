terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "lakshmi-remote-state"
    key    = "expense-dev-frontend"
    region = "us-east-1"
    dynamodb_table = "lakshmi-remote-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}