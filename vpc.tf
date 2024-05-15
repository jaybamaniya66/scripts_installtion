resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "My Vpc"
  }
}

resource "aws_internet_gateway" "demo-ig" {
    vpc_id = aws_vpc.main-vpc.id

    tags = {
      Name = "demo ig"
    }
}

resource "aws_internet_gateway_attachment" "ig-vpc-attachment" {
  internet_gateway_id = aws_internet_gateway.demo-ig.id
  vpc_id = aws_vpc.main-vpc.id
}

resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.main-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id = aws_vpc.main-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet-2"
  }
}

resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.main-vpc.id

  tags = {
    Name = "Route-table"
  }
}

resource "aws_route" "rt-subnet-1" {
  route_table_id = aws_route_table.route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.demo-ig.id
}


  

