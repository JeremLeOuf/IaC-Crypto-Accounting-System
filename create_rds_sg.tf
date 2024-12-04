resource "aws_security_group" "rds_sg" {
  name        = "rds_security_group"
  description = "Allow traffic from EC2 to RDS"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    security_groups = [aws_security_group.ec2_sg.id] # Allow traffic from EC2 SG
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}