resource "aws_db_instance" "db_instance" {
  engine            = "postgres"
  db_instance_class = "db.t3.micro"
  allocated_storage = 20
  db_name           = "cryptocompta"
  username          = "admin"
  password          = "AKIAWQUOZLAYRHH5WCHY"
}
