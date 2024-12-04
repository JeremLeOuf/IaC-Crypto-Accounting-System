variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0036618782d3fe37e" # My desired AMI
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t3.micro" # Free tier eligible
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "postgres"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  default     = "1234567890"
}

variable "db_name" {
  description = "The name of the RDS database"
  type        = string
  default     = "cryptocompta"
}

variable "ec2_key_name" {
  description = "Key pair name for EC2 SSH access"
  type        = string
  default     = "CryptoCompta"
}