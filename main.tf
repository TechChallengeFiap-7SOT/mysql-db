provider "aws" {
    region = "us-east-1"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

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
  db_subnet_group_name = aws_db_subnet_group.subnet-group-db.name
  vpc_security_group_ids = [aws_security_group.fiap-db-sg.id]
  skip_final_snapshot = true 
  publicly_accessible =  true

  tags = {
    Name = "MySQL TechChallenge Fiap"
  }
}

resource "aws_security_group" "fiap-db-sg" {
  name        = "mysql-sg"
  description = "Allow MySQL access"
  vpc_id      = aws_vpc.fiap-vpc.id

  ingress {
    from_port   = 3306
    to_port     = 3306
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

resource "aws_db_subnet_group" "subnet-group-db" {
  name       = "subnet-group-db"
  subnet_ids = [aws_subnet.db-subnet-a.id, aws_subnet.db-subnet-b.id]
  
  tags = {
    Name = "Techchallenge database"
  }
}


resource "aws_vpc" "fiap-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "TechChallenge VPC"
  }
}

resource "aws_subnet" "db-subnet-a" {
  vpc_id                 = aws_vpc.fiap-vpc.id
  cidr_block             = "10.0.1.0/24"
  availability_zone      = "us-east-1a"
}


resource "aws_subnet" "db-subnet-b" {
  vpc_id                 = aws_vpc.fiap-vpc.id
  cidr_block             = "10.0.2.0/24"
  availability_zone      = "us-east-1b"
}
