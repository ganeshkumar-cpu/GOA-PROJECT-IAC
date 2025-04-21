variable "vpc_id" {
  description = "The ID of the existing VPC."
  default     = "vpc-00defc46ce1817d4f"
}

variable "api_server_1_sg_id" {
  description = "The security group ID for the API Server 1."
}

variable "api_server_2_sg_id" {
  description = "The security group ID for the API Server 2."
}

variable "web_db_server_sg_id" {
  description = "The security group ID for the Web DB Server."
}
