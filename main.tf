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

