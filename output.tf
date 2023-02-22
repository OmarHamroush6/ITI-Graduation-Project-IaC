output "ec2-public-ip" {
  value = aws_instance.omar-public.public_ip
}