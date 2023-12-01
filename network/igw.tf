resource "aws_internet_gateway" "aws_arab_igw" {
  vpc_id = aws_vpc.aws_arab_vpc.id

  tags = {
    Name = var.env_tag
  }
}