resource "aws_alb" "Application-lb" {
  name = "application-load"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.ssh.id]
  subnets = [
    aws_subnet.subnet-1.id,
    aws_subnet.subnet-2.id
  ]
  enable_deletion_protection = true 
  
}

resource "aws_lb_target_group" "target-group-1" {
  name     = "tg-1"
  target_type = "alb"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main-vpc.id
}