provider "aws" {
    profile = "training"
    region = "us-east-1"
}

terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.66"
      }
    }
}

/*
terraform {
  backend "s3" {
    bucket = "state-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
*/