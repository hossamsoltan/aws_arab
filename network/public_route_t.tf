resource "aws_route_table" "aws_arab_public_route_table" {
  vpc_id = aws_vpc.aws_arab_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws_arab_igw.id
  }
  
  tags = {
    Name = var.env_tag
  }
}

resource "aws_route_table_association" "aws_arab_public_association_01" {
  subnet_id          = aws_subnet.aws_arab_public_subnet_1a.id
  route_table_id     = aws_route_table.aws_arab_public_route_table.id
}

resource "aws_route_table_association" "aws_arab_public_association_02" {
  subnet_id          = aws_subnet.aws_arab_public_subnet_1b.id
  route_table_id     = aws_route_table.aws_arab_public_route_table.id
}