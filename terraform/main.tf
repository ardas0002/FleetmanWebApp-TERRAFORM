provider "aws" {
    shared_config_files = ["/Users/adria/.aws/config"]
    shared_credentials_files = ["/Users/adria/.aws/credentials"]
    profile = "training"
}

terraform {
    required_providers {
      aws = {
      source  = "hashicorp/aws"
        version = "~> 4.66"
      }
    }
}


terraform {
  backend "s3" {
    bucket                  = "devops-project-state-bucket"
    key                     = "terraform.tfstate"
    region                  = "us-east-1"
    encrypt                 = true
  }
}