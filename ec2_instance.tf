resource "aws_instance" "ec2_instance" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"
  key_name      = var.ec2_key_name
  
  user_data = <<-EOF
            #!/bin/bash
            psql -h ${aws_db_instance.db_instance.endpoint} -U ${var.db_username} -W
            EOF
}
