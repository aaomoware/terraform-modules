resource "aws_autoscaling_group" "ag" {

  tags                      = "${var.tags}"
  name                      = "${var.name}"
  max_size                  = "${var.max_size}"
  min_size                  = "${var.min_size}"
  force_delete              = "${var.force_delete}"
  load_balancers            = "${var.load_balancers}"
  placement_group           = "${var.placement_group}"
  desired_capacity          = "${var.desired_capacity}"
  default_cooldown          = "${var.default_cooldown }"
  health_check_type         = "${var.health_check_type}"
  vpc_zone_identifier       = ["${var.vpc_zone_identifier}"]
  termination_policies      = "${var.termination_policies}"
  launch_configuration      = "${var.launch_configuration}"
  health_check_grace_period = "${var.health_check_grace_period}"

  timeouts {
    delete = "${var.delete}"
  }
}
