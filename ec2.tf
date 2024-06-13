resource "aws_instance" "web" {
  count                     = 2
  ami                       = "ami-0e1d06225679bc1c5"
  instance_type             = "t2.micro"
  key_name                  = "3-tierkey"
  subnet_id                 = aws_subnet.public[count.index].id
  vpc_security_group_ids    = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true

  tags = {
    Name = "Webserver"
  }

  provisioner "file" {
    source      = "./3-tierkey.pem" 
    destination = "/home/ec2-user/3-tierkey.pem"

    connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      private_key = file("./3-tierkey.pem")
    }
  }
}

  resource "aws_instance" "db" {
  ami                       = "ami-0e1d06225679bc1c5"
  instance_type             = "t2.micro"
  key_name                  = "3-tierkey"
  subnet_id                 = aws_subnet.private.id
  vpc_security_group_ids    = [aws_security_group.allow_tls_db.id]
  associate_public_ip_address = true

  tags = {
    Name = "DBserver"
  }
}
