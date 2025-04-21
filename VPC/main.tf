# Define provider
provider "aws" {
  region = "ap-south-1"  
}

# Create VPC
resource "aws_vpc" "Goa_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "Goa_vpc"
  }
}

# Create Subnet 1 (public subnet in ap-south-1a)
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.Goa_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet"
  }
}

# Create Subnet 2 (private subnet in ap-south-1b)
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.Goa_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "private_subnet"
  }
}

# Create a third subnet (you can modify if needed)
resource "aws_subnet" "public_db_subnet" {
  vpc_id                  = aws_vpc.Goa_vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-db-subnet"
  }
}

# Create a public route table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.Goa_vpc.id
  tags = {
    Name = "public_route_table"
  }
}

# Create a route in the public route table for internet access
resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.Goa_IG.id
}

# Attach the public route table to the public subnet
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

# Create an Internet Gateway and attach it to the VPC
resource "aws_internet_gateway" "Goa_IG" {
  vpc_id = aws_vpc.Goa_vpc.id
  tags = {
    Name = "Goa_IG"
  }
}

