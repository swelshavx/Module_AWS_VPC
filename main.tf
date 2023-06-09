resource "aws_vpc" "spokevpc" {
  cidr_block = var.cidr
  
  tags = {
    Name = ""
  }

}

resource "aws_internet_gateway" "spokeigw" {
  vpc_id = aws_vpc.spokevpc.id

  tags = {
    Name = " "
  }
}
resource "aws_subnet" "spokesubnet" {
  vpc_id     = aws_vpc.spokevpc.id
  cidr_block = var.subnet
   
 
  tags = {
    Name = ""
  }

}

resource "aws_route_table" "ModVPCRT" {
  vpc_id = aws_vpc.spokevpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.spokeigw.id
  }
  depends_on = [aws_vpc.spokevpc]
}

