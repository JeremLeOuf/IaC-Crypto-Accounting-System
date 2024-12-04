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

variable "ec2_key_name" {
  description = "Key pair name for EC2 SSH access"
  type        = string
}