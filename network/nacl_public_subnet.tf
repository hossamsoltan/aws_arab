resource "aws_network_acl" "aws_arab_nacl" {
  vpc_id = aws_vpc.aws_arab_vpc.id # Specify your VPC ID
  tags = {
    Name = var.env_tag
  }
}

# Inbound rule to allow SSH (port 22) traffic
resource "aws_network_acl_rule" "inbound_allow_ssh" {
  rule_number        = 100 # Adjust the rule number as needed
  network_acl_id     = aws_network_acl.aws_arab_nacl.id
  egress             = false # Set to false for inbound rules
  protocol           = "6" # TCP
  rule_action        = "allow"
  cidr_block         = "0.0.0.0/0" # Allow SSH from any IP address
  from_port          = 22
  to_port            = 22
}

# Outbound rule to allow all traffic (example, adjust as needed)
resource "aws_network_acl_rule" "outbound_allow_all" {
  rule_number        = 200 # Adjust the rule number as needed
  network_acl_id     = aws_network_acl.aws_arab_nacl.id
  egress             = true # Set to true for outbound rules
  protocol           = "-1" # Allow all protocols
  rule_action        = "allow"
  cidr_block         = "0.0.0.0/0" # Allow all outbound traffic
}

# Attach the NACL to the public subnet
resource "aws_network_acl_association" "aws_arab_subnet1_nacl_association" {
  subnet_id          = aws_subnet.aws_arab_public_subnet_1a.id # Specify your public subnet ID
  network_acl_id     = aws_network_acl.aws_arab_nacl.id
}

resource "aws_network_acl_association" "aws_arab_subnet2_nacl_association" {
  subnet_id          = aws_subnet.aws_arab_public_subnet_1b.id # Specify your public subnet ID
  network_acl_id     = aws_network_acl.aws_arab_nacl.id
}