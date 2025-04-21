variable "ami_id" {
  description = "Default AMI for all EC2 instances"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for all EC2 instances"
  type        = string
}

variable "security_group_ids" {
  description = "Security groups to assign to all EC2 instances"
  type        = list(string)
}

variable "key_name" {
  description = "SSH key name for EC2 access"
  type        = string
}
