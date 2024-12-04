resource "aws_instance" "ec2_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = var.ec2_key_name
  
  user_data = <<-EOF
            #!/bin/bash
            psql -h ${aws_db_instance.db_instance.endpoint} -U ${var.db_username} -W
            EOF
}
