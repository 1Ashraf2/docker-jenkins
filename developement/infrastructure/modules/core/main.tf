data "aws_availability_zones" "available" {}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.environment}-vpc"
    terraform = "true"
    type = "VPC"
  }
}



# resource "aws_internet_gateway" "jenkins_igw" {
#  subnet_id = element(aws_subnet.subnet_public.*.id, count.index)
#   #count = var.use_nat_instances ? 0 : var.az_limit

#   tags = {
#       Name = "${var.environment}-jenkins-igw"
#     } 
# }

# resource "aws_route_table" "public_rt" {
#   #count   = length(var.public_subnets)
#   vpc_id  = aws_vpc.main.id

#    route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.jenkins_igw.id
#   }

#   tags  = {
#     Name  = "${var.environment}-jenkins-pub-rt"
#   }
# }

# resource "aws_route_table_association" "rta" {
#   subnet_id      = aws_subnet.subnet.id
#   route_table_id = aws_route_table.rt1.id
# }