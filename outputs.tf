output "vpc_cidr"{
    value = aws_vpc.spokevpc.cidr_block
}
output "vpc_id" {
  value = var.vpcid
}
output "igw_id" {
    value = aws_internet_gateway.id
}
