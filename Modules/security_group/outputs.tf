output "api_server_1_sg_id" {
  value = aws_security_group.api_server_1_sg.id
}

output "api_server_2_sg_id" {
  value = aws_security_group.api_server_2_sg.id
}

output "web_db_server_sg_id" {
  value = aws_security_group.web_db_server_sg.id
}
