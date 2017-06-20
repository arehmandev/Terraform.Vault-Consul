resource "aws_elb" "consul" {
  name                      = "${var.elb_name}"
  subnets                   = ["${var.subnets}"]
  security_groups           = ["${var.security_groups}"]
  cross_zone_load_balancing = true

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "${var.health_check_target}"
    interval            = 30
  }

  listener {
    instance_port     = 8500
    instance_protocol = "tcp"
    lb_port           = 8500
    lb_protocol       = "tcp"
  }

  tags {
    Name      = "${var.elb_name}"
    builtWith = "terraform"
  }
}
