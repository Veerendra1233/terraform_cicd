terraform {
  backend "s3" {
    bucket = "terraform-my-project-state"  # Replace with your S3 bucket name
    key    = "path/to/terraform.tfstate"  # Define path where state will be stored
    region = "us-east-2"                  # Replace with your AWS region
    encrypt = true                        # Enable encryption for security
    acl     = "private"                   # Keep the state file private
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id

  tags = {
    Name = var.instance_name
  }
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}
