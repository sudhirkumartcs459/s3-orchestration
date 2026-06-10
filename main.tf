terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "sudhir-demo-bucket-20260610-001"

  tags = {
    Name        = "Demo Bucket"
    Environment = "Dev"
  }
}

