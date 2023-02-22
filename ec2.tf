resource "aws_instance" "omar-public" {
  ami                         = var.ec2-ami
  instance_type               = var.instance_type
  associate_public_ip_address = "true"
  vpc_security_group_ids      = [aws_security_group.omar-security.id]
  subnet_id                   = aws_subnet.subnets[0].id
  key_name                    = aws_key_pair.generated_key.key_name
  tags = {
    Name = "omar-public-ec2"
  }
}