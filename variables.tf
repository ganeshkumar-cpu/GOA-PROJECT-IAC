variable "api_server_1_sg_id" {
  description = "The security group ID to be associated with API Server 1 instance."
}

variable "api_server_2_sg_id" {
  description = "The security group ID to be associated with API Server 2 instance."
}

variable "web_db_server_sg_id" {
  description = "The security group ID to be associated with the Web DB Server instance."
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
}

variable "vpc_name" {
  description = "The name tag for the VPC."
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet (for API servers)."
}

variable "public_subnet_az" {
  description = "Availability Zone for the public subnet."
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet (for internal resources)."
}

variable "private_subnet_az" {
  description = "Availability Zone for the private subnet."
}

variable "public_db_subnet_cidr" {
  description = "CIDR block for the public database subnet (used by Web DB Server)."
}

variable "public_db_subnet_az" {
  description = "Availability Zone for the public database subnet."
}

variable "api_server_1_ami" {
  description = "AMI ID to be used for provisioning API Server 1 instance."
}

variable "api_server_2_ami" {
  description = "AMI ID to be used for provisioning API Server 2 instance."
}

variable "web_db_server_ami" {
  description = "AMI ID to be used for provisioning the Web DB Server instance."
}

variable "api_servers_key_name" {
  description = "Key pair name to SSH into the API servers."
}

variable "web_db_key_name" {
  description = "Key pair name to SSH into the Web DB Server."
}

