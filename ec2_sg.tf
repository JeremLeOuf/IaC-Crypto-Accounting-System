resource "aws_security_group" "ec2_sg" {
  name        = "ec2_security_group"
  description = "Allow EC2 outbound to RDS"

  egress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    security_groups = [aws_security_group.rds_sg.id] # Allow traffic to RDS SG
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Adjust for EC2 access requirements
  }
}