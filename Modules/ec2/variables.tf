# modules/ec2/variables.tf
variable "api_server_1_ami" {
  description = "AMI ID for the first API server"
}

variable "api_server_2_ami" {
  description = "AMI ID for the second API server"
}

variable "web_db_server_ami" {
  description = "AMI ID for the Web DB server"
}

variable "api_server_1_sg_id" {
  description = "The security group ID for the API Server 1"
}

variable "api_server_2_sg_id" {
  description = "The security group ID for the API Server 2"
}

variable "web_db_server_sg_id" {
  description = "The security group ID for the Web DB Server"
}
variable "api_servers_key_name" {
  description = "The key pair name for API servers (api_server_1 and api_server_2)"
  type        = string
}

variable "web_db_key_name" {
  description = "The key pair name for the Web DB server"
  type        = string
}
variable "vpc_id" {
  description = "The VPC ID where the EC2 instances will be launched."
}

