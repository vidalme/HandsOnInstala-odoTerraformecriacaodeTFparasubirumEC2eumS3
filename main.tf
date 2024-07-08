terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu24" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "essetresbalde" {
  bucket = "essetresbalde"
  tags = {
    Name        = "essetresbalde"
  }
}