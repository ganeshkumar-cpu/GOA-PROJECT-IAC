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
