resource "aws_autoscaling_schedule" "asg" {
  tags                   = "${var.tags}"
  min_size               = "${min_size}"
  max_size               = "${max_size}"
  end_time               = "${end_time}"
  start_time             = "${start_time}"
  desired_capacity       = "${desired_capacity}"
  scheduled_action_name  = "${scheduled_action_name}"
  autoscaling_group_name = "${autoscaling_group_nam}"
}
