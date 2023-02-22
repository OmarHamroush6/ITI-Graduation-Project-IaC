variable "ec2-ami" {
  description = "choose instance ami"
}

variable "instance_type" {
  description = "choose ec2 type"
  type        = string
}

variable "def-region" {
  description = "determining the region"
  type        = string
}

variable "vpc-cidr" {
  description = "vpc cidr block"
}

variable "subnets-cidr" {
  type = list(any)
}

variable "subnets" {
  type = list(any)
}

variable "web-traffic" {
  description = "allow all"
}