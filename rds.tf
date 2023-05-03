#creating rds instance
resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [aws_subnet.pvt-sub-3.id, aws_subnet.pvt-sub-4.id]
  tags = {
    Name = "my DB subnet group"
  }
}
resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_name                = "mydb"
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  multi_az               = true
  username               = "username"
  password               = "password"
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.databasesg.id]
}

