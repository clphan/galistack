terraform {
  required_version = ">= 1.0.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55.0"
    }
    kubernetes = {
      version = "~> 2.7.0"
    }
  }
}