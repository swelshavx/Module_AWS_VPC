output "VPC Cidr Block"{
    value = aws_vpc.spokevpc.cidr_block
}
output "vpc_id" {
  value = var.vpcid
}