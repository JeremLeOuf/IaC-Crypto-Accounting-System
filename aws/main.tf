terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
provider "aws" {
  region = var.aws_region # Stockholm
}

resource "aws_instance" "CryptoCompta_EC2" {
  ami           = "ami-0036618782d3fe37e"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name
  }
}
