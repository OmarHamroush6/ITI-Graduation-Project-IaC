ec2-ami = "ami-09cd747c78a9add63"

instance_type = "t2.micro"

def-region = "us-east-1"

vpc-cidr = "10.0.0.0/16"

subnets = ["public", "private"]

subnets-cidr = ["10.0.0.0/24", "10.0.1.0/24"]

web-traffic = "0.0.0.0/0"