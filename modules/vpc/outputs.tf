output "subnet_id_surendra" {
  value = aws_subnet.public_subnet_az1.id
} 

output "vpc_id" {
  value = aws_vpc.vpc.id
} 