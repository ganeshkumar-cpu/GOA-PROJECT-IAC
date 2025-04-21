provider "aws" {
  region = "ap-south-1" 
}

module "api_server_2" {
  source              = "./modules/ec2_instance"
  name                = "api_server_2"
  instance_type       = "t3a.xlarge"
  ami_id              = var.ami_id
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  key_name            = var.key_name
}

module "api_server_1" {
  source              = "./modules/ec2_instance"
  name                = "api_server_1"
  instance_type       = "t3a.xlarge"
  ami_id              = var.ami_id
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  key_name            = var.key_name
}

module "web_db_server" {
  source              = "./modules/ec2_instance"
  name                = "Web_DB_server"
  instance_type       = "m6g.4xlarge"
  ami_id              = var.ami_id
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  key_name            = var.key_name
}

