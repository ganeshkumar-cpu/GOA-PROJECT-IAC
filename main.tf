# root main.tf
provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_id   = "vpc-00defc46ce1817d4f"
  vpc_name = "Goa_vpc"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = "vpc-00defc46ce1817d4f"
}

module "ec2_instances" {
  source                = "./modules/ec2"
  vpc_id                = "vpc-00defc46ce1817d4f"
  api_server_1_sg_id    = module.security_group.api_server_1_sg_id
  api_server_2_sg_id    = module.security_group.api_server_2_sg_id
  web_db_server_sg_id   = module.security_group.web_db_server_sg_id
  api_server_1_ami      = "ami-0dee22c13ea7a9a67"
  api_server_2_ami      = "ami-0dee22c13ea7a9a67"  
  web_db_server_ami     = "ami-0c8eea98010057bd0"  
}


