resource "aws_eip" "nat" {
  instance = aws_instance.web[0].id
}
