/*
Hardcode versions to avoid surprises with inconsistencies/depracations/changes etc
*/

terraform {
  required_version = "= 1.8.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}
