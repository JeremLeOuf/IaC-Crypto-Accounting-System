resource "aws_instance" "ec2_instance" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name

  # Attach EC2 security group
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  # Pass RDS connection details to EC2 via user_data
  user_data = <<EOF
  
#!/bin/bash
# Install PostgreSQL client
sudo apt update && sudo apt install -y postgresql-client

# Connect to RDS instance
psql -h ${aws_db_instance.db_instance.endpoint} -U ${var.db_username} -W
EOF
}