output "vpc_id" {
  value = module.vpc.vpc_id
}

output "api_server_1_id" {
  value = module.ec2_instances.api_server_1_id
}

output "api_server_2_id" {
  value = module.ec2_instances.api_server_2_id
}

output "web_db_server_id" {
  value = module.ec2_instances.web_db_server_id
}
