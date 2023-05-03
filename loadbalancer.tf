resource "aws_lb" "external_lb" {
  name               = "external-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.websg.id]
  subnets            = [aws_subnet.pub-subnet-1.id,aws_subnet.pvt-subnet-2.id]

}
resource "aws_lb_target_group" "target_alb" {
  name     = "target-alb"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc-1.id

}

resource "aws_lb_target_group_attachment" "attahment" {
  target_group_arn = aws_lb_target_group.target_alb.arn
  target_id        = aws_instance.ec2_hello.id
  port             = 80
  depends_on       = [aws_instance.ec2_hello]

}

resource "aws_lb_target_group_attachment" "attachment2" {
  target_group_arn = aws_lb_target_group.target_alb.id
  target_id        = aws_instance.ec2_hello_2.id
  port             = 80
  depends_on       = [aws_instance.ec2_hello_2]

}



resource "aws_lb_listener" "frontend" {
  load_balancer_arn = aws_lb.external_lb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_alb.arn
  }
}