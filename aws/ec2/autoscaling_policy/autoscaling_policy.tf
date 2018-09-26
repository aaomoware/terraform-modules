resource "aws_autoscaling_policy" "ap" {
  name                      = "${var.nane}"
  cooldown                  = "${var.cooldown}"
  adjustment_type           = "${var.adjustment_type}"
  scaling_adjustment        = "${var.scaling_adjustment}"
  autoscaling_group_name    = "${aws_autoscaling_group.bar.name}"
  estimated_instance_warmup = "${var.estimated_instance_warmup}"
}
