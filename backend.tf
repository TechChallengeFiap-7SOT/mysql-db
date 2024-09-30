terraform {
    backend "s3" {
      bucket = "tech-challenge-tf"
      key = "mysql/terraform.tfstate"
      region = "us-east-1"
    }
}