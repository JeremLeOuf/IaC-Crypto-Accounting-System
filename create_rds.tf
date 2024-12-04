resource "aws_db_instance" "db_instance" {
  engine            = "postgres"
  instance_class = "db.t3.micro"
  allocated_storage = 20
  db_name           = "cryptocompta"
  username          = var.db_username
  password          = var.db_password
}
