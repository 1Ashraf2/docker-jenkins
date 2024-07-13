resource "aws_subnet" "public" {
    count             = length(var.public_subnets)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = element(var.public_subnets, count.index)
  vpc_id            = aws_vpc.main.id
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.environment}-public-${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
   count             = length(var.private_subnets)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = element(var.private_subnets, count.index)
  vpc_id            = aws_vpc.main.id

  tags = {
    Name = "${var.environment}-private-${count.index + 1}"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.main.id

  tags   = {
    Name = "Jenkins-Internet-Gateway"
  }
}

resource "aws_route_table" "public_route_table" {
  count   = length(var.public_subnets)
  vpc_id  = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags  = {
    Name  = "${var.environment}-Jenkins-RT-${count.index + 1}"
  }
}

resource "aws_route_table_association" "internet_gateway_public_route" {
   count          = length(var.public_subnets)
  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = element(aws_route_table.public_route_table.*.id, count.index)
}
