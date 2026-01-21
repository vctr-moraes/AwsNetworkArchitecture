terraform {
  required_version = "1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region     = "us-west-1"
  access_key = "<access_key>"
  secret_key = "<secret_key>"
}
