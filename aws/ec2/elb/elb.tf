resource "aws_elb" "elb" {
  name               = "${var.name}"
  availability_zones = ["${var.availability_zones}"]

  listener = "${var.listener_one}"
  listener = "${var.listener_two}"

#  access_logs = "${var.access_logs}"
  health_check = "${var.health_check}"

  instances                   = ["${var.instances}"]
  idle_timeout                = "${var.idle_timeout}"
  connection_draining         = "${var.connection_draining}"
  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  connection_draining_timeout = "${var.connection_draining_timeout}"

  tags = "${var.tags}"
}