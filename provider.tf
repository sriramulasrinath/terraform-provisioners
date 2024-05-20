terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
   backend "s3" {
    bucket = "devprj-bucket"
    key    = "remote-exec-demo"
    region = "us-east-1"
    dynamodb_table = "devdyno"
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}