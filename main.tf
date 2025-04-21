provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source                  = "./modules/vpc"
  vpc_cidr                = "10.0.0.0/16"
  vpc_name                = "Goa_vpc"
  public_subnet_cidr      = "10.0.1.0/24"
  public_subnet_az        = "ap-south-1a"
  private_subnet_cidr     = "10.0.2.0/24"
  private_subnet_az       = "ap-south-1b"
  public_db_subnet_cidr   = "10.0.3.0/24"
  public_db_subnet_az     = "ap-south-1a"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2_instances" {
  source                = "./modules/ec2"
  vpc_id                = module.vpc.vpc_id
  api_server_1_sg_id    = module.security_group.api_server_1_sg_id
  api_server_2_sg_id    = module.security_group.api_server_2_sg_id
  web_db_server_sg_id   = module.security_group.web_db_server_sg_id

  api_server_1_ami      = "ami-0dee22c13ea7a9a67"
  api_server_2_ami      = "ami-0dee22c13ea7a9a67"
  web_db_server_ami     = "ami-0c8eea98010057bd0"
}

