// Declare two public subnets
resource "aws_subnet" "public" {
  count             = 2
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.cidr, count.index)
  availability_zone = element(var.az, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index}"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "private-sub3"
  }
}

#data "aws_subnet" "sid" {
#  filter {
#    name   = "vpc-id"
#    values = [aws_vpc.main.id]
#  }

#  filter {
#    name   = "tag:Tier"
#    values = ["Public"]
#  }
#}
