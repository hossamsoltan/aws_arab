
resource "aws_instance" "aws_arab_instance" {
  count = 2
  ami           = "ami-0230bd60aa48260c6" # Specify your desired AMI
  instance_type = "t2.micro"
  key_name      = aws_key_pair.aws_arab_key.key_name # Use the key pair created below
  subnet_id     = count.index == 0 ? module.network.public_subnet_id_a : module.network.public_subnet_id_b
  associate_public_ip_address = true # Assign a public IP address to the bastion instance
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  root_block_device {
    volume_size = 8 # Size of the root EBS volume in GB, within the free tier limit
    volume_type = "gp2" # EBS volume type, within the free tier limit
  }

  tags = {
    Name = "${var.env_tag}_public_${count.index}"
  }
}
