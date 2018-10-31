resource "aws_launch_configuration" "lc" {

  name_prefix           = "${var.name}"
  key_name              = "${var.key_name}"
  image_id              = "${var.image_id}"
  user_data             = "${var.user_data}"
  instance_type         = "${var.instance_type}"
  security_groups       = ["${var.security_groups}"]
  iam_instance_profile  = "${var.iam_instance_profile}"
  associate_public_ip_address = "${var.associate_public_ip_address}"

  lifecycle {
     create_before_destroy = true
   }
}
