terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.59.0"
    }
  }
  backend "s3" {
    bucket = "lakshmi-remote-state"
    key    = "expense-dev-bastion"
    region = "us-east-1"
    dynamodb_table = "lakshmi-remote-locking"
  }
}

provider "aws" {
    region = "us-east-1"
}