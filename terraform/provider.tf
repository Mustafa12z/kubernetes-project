terraform {
  backend "s3" {
    bucket  = "eks-tfstate-muz"
    key     = "eks-project"
    region  = "eu-west-2"
    encrypt = true

  }

  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"

    }

  }
}

provider "aws" {
  region = "eu-west-2"
}

