terraform {
  required_version = ">=1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-tfstate-test-01"
    key            = "TERRAFORM-FOLDER/vpc-state.tfstate"
    dynamodb_table = "TF-STATE-LOCK"
    region         = "us-east-1"
  }
}
