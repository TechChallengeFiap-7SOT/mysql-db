resource "aws_db_instance" "mysql-db" {
  identifier         = "tc-mysql"
  db_name            = "lanchonete_db"
  allocated_storage  = 20
  storage_type       = "gp2"
  engine             = "mysql"
  engine_version     = "8.0.35"
  instance_class     = "db.t4g.micro" 
  username           = "user"
  password           = "password"

  skip_final_snapshot = true 
  publicly_accessible =  true

  tags = {
    Name = "MySQL TechChallenge Fiap"
  }
}

