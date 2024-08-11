terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.62.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
  profile = "default"
}