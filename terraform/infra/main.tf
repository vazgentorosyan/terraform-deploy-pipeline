provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "this" {
  name = "test-sg"
  description = "just a test sg"
  tags = {
    Name = "TEST-SG-TERRAFORM"
  }
}
