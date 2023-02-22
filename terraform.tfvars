ec2-ami = "ami-09cd747c78a9add63"

instance_type = "t2.micro"

def-region = "us-east-1"

vpc-cidr = "10.0.0.0/16"

subnets = ["public", "public", "private", "private"]

subnets-cidr = ["10.0.0.0/24", "10.0.2.0/24", "10.0.1.0/24", "10.0.3.0/24"]

subnets-az = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]

web-traffic = "0.0.0.0/0"