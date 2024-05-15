variable "aws_region" {
  description = "The AWS region to deploy resources"
  type = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type = string
  default = "ami-04b70fa74e45c3917"
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "ssh_key_name" {
  description = "Name of the existing SSH key pair"
  type = string
  default = "jay-asus"
}

variable "s3_bucket_name" {
  description = "Name for the S3 bucket"
  type = string
  default = "demo-jay"
}
