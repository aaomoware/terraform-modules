resource "aws_elb" "elb" {
  name               = "${var.name}"
  tags               = "${var.tags}"
  subnets            = ["${var.subnets}"]
  internal           = "${var.internal}"

#<--pending elb log enablment
  # access_logs {
  #   bucket        = "${var.bucket}"
  #   interval      = "${var.al_interval}"
  #   bucket_prefix = "${var.bucket_prefix}"
  # }

  listener {
    lb_port           = "${var.lb_port}"
    lb_protocol       = "${var.lb_protocol}"
    instance_port     = "${var.instance_port}"
    instance_protocol = "${var.instance_protocol}"
    ssl_certificate_id = "${var.ssl_certificate_id}"
  }

  health_check {
    target              = "${var.target}"
    timeout             = "${var.timeout}"
    interval            = "${var.hc_interval}"
    healthy_threshold   = "${var.healthy_threshold}"
    unhealthy_threshold = "${var.unhealthy_threshold}"
  }

  instances                   = ["${var.instances}"]
  idle_timeout                = "${var.idle_timeout}"
  security_groups             = ["${var.security_groups}"]
  connection_draining         = "${var.connection_draining}"
  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  connection_draining_timeout = "${var.connection_draining_timeout}"
}
