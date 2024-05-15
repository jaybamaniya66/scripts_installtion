resource "aws_instance" "demo-ec2" {
    ami = var.instance_ami
    instance_type = var.instance_type

    vpc_security_group_ids = [aws_security_group.ssh.id] 

    key_name = var.ssh_key_name

    tags = {
        Name = "My Web Service"
    }
}