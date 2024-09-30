resource "null_resource" "init_db" {
  provisioner "local-exec" {
    command = <<EOT
      mysql -h ${aws_db_instance.mysql-db.address} -P 3306 -u user -ppassword lanchonete_db < init.sql
    EOT
  }

  depends_on = [aws_db_instance.mysql-db]
}