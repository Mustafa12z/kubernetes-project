output "security_group_id" {
  value = aws_security_group.aws_sg.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_a_id" {
  value = aws_subnet.public-subnet.id
}

output "public_subnet_b_id" {
  value = aws_subnet.public-subnetb.id
}

output "private_subnet_a_id" {
  value = aws_subnet.private-subnet.id
}

output "private_subnet_b_id" {
  value = aws_subnet.private-subnetb.id
}
