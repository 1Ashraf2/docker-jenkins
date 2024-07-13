output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

# output "internet_gateway_id" {
#   description = "The ID of the Internet Gateway"
#   value       = aws_internet_gateway.jenkins_igw.id
# }

# output "nat_gateway_ip_address" {
#   value = join(",", aws_eip.nat_gateway_eip.*.public_ip)
# }

# output "nat_gateway_ip_address_list" {
#   value = aws_eip.nat_gateway_eip.*.public_ip
# }

# output "nat_gateway_ids" {
#   value = join(",", aws_nat_gateway.nat_gateway.*.id)
# }
