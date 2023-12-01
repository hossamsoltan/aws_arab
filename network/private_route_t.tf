resource "aws_route_table" "aws_arab_private_route_table_1a" {
  vpc_id = aws_vpc.aws_arab_vpc.id

  tags = {
    Name = var.env_tag
  }
}

resource "aws_route_table" "aws_arab_private_route_table_1b" {
  vpc_id = aws_vpc.aws_arab_vpc.id

  tags = {
    Name = var.env_tag
  }
}



resource "aws_route_table_association" "aws_arab_private_association_a" {
  subnet_id      = aws_subnet.aws_arab_private_subnet_1a.id
  route_table_id = aws_route_table.aws_arab_private_route_table_1a.id
}

resource "aws_route_table_association" "aws_arab_private_association_b" {
  subnet_id      = aws_subnet.aws_arab_private_subnet_1b.id
  route_table_id = aws_route_table.aws_arab_private_route_table_1b.id
}
