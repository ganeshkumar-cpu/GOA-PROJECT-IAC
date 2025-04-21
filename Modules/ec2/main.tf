resource "aws_instance" "api_server_1" {
  ami                    = var.api_server_1_ami
  instance_type          = "t3a.xlarge"
  root_block_device {
    volume_size = 100
  }
  vpc_security_group_ids = [var.api_server_1_sg_id]
}

resource "aws_instance" "api_server_2" {
  ami                    = var.api_server_2_ami
  instance_type          = "t3a.xlarge"
  root_block_device {
    volume_size = 100
  }
  vpc_security_group_ids = [var.api_server_2_sg_id]
}

resource "aws_instance" "web_db_server" {
  ami                    = var.web_db_server_ami
  instance_type          = "m6g.4xlarge"
  root_block_device {
    volume_size = 500
  }
  vpc_security_group_ids = [var.web_db_server_sg_id]
}
