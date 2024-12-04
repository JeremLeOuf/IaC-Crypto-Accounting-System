variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0036618782d3fe37e" # My desired AMI
}

variable "aws_region" {
  description = "Region to deploy AWS resources"
  type        = string
  default     = "eu-north-1"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "CryptoCompta_EC2"
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t3.micro" # Free tier eligible
}

variable "ec2_key_name" {
  description = "Key pair name for EC2 SSH access"
  type        = string
  default     = "CryptoCompta"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "postgres"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  default     = "WyVF7ykwCzAwwgR"
}

variable "db_name" {
  description = "The name of the RDS database"
  type        = string
  default     = "cryptocompta"
}

