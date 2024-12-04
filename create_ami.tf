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
  region  = "eu-north-1" # Stockholm
}

resource "aws_instance" "app_server" {
  ami           = "ami-0036618782d3fe37e"
  instance_type = "t3.micro"

  tags = {
    Name = "CryptoCompta_EC2"
  }
}