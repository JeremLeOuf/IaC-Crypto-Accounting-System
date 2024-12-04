# Destroy the existing SG if it exists and recreate it
resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "Allow EC2 instance to connect to other resources"

  lifecycle {
    # Delete the existing SG if it exists before creating a new one
    create_before_destroy = true
    ignore_changes        = [ingress, egress]  # Avoid unnecessary changes during>  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}