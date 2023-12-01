resource "aws_subnet" "aws_arab_public_subnet_1a" {
  vpc_id                  = aws_vpc.aws_arab_vpc.id
  cidr_block              = var.public_subnet_cidr_blocks_1a
  availability_zone       = "${var.env_region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.env_tag
  }
}

resource "aws_subnet" "aws_arab_public_subnet_1b" {
  vpc_id                  = aws_vpc.aws_arab_vpc.id
  cidr_block              = var.public_subnet_cidr_blocks_1b
  availability_zone       = "${var.env_region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = var.env_tag
  }
}

resource "aws_subnet" "aws_arab_private_subnet_1a" {
  vpc_id                  = aws_vpc.aws_arab_vpc.id
  cidr_block              = var.private_subnet_cidr_blocks_1a
  availability_zone       = "${var.env_region}a"

  tags = {
    Name = var.env_tag
  }
}

resource "aws_subnet" "aws_arab_private_subnet_1b" {
  vpc_id                  = aws_vpc.aws_arab_vpc.id
  cidr_block              = var.private_subnet_cidr_blocks_1b
  availability_zone       = "${var.env_region}b"

  tags = {
    Name = var.env_tag
  }
}
