variable "api_server_1_sg_id" {
  description = "The security group ID for the API Server 1."
}

variable "api_server_2_sg_id" {
  description = "The security group ID for the API Server 2."
}

variable "web_db_server_sg_id" {
  description = "The security group ID for the Web DB Server."
}
variable "vpc_cidr" {}
variable "vpc_name" {}

variable "public_subnet_cidr" {}
variable "public_subnet_az" {}

variable "private_subnet_cidr" {}
variable "private_subnet_az" {}

variable "public_db_subnet_cidr" {}
variable "public_db_subnet_az" {}

variable "api_server_1_ami" {}
variable "api_server_2_ami" {}
variable "web_db_server_ami" {}

variable "api_servers_key_name" {}
variable "web_db_key_name" {}
