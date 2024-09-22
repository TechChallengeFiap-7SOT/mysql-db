output "security_group_id" {
  value       = aws_security_group.fiap-db-sg.id
}
output "db_instance_endpoint" {
  value       = aws_db_instance.mysql-db.endpoint
}