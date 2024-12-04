variable "ec2_ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0036618782d3fe37e" # My desired AMI
}

variable "ec2_instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t3.micro" # Free tier eligible
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = CryptoComptaDB
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}

variable "ec2_key_name" {
  description = "Key pair name for EC2 SSH access"
  type        = string
  default     = "CrytoComptaKey"
}