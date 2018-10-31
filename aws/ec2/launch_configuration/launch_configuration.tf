resource "aws_launch_configuration" "lc" {

  name_prefix           = "${var.name}"
  key_name              = "${var.key_name}"
  image_id              = "${var.image_id}"
  user_data             = "${var.user_data}"
  instance_type         = "${var.instance_type}"
  security_groups       = ["${var.security_groups}"]
  user_data_base64      = "${var.user_data_base64}"
  iam_instance_profile  = "${var.iam_instance_profile}"
  associate_public_ip_address = "${var.associate_public_ip_address}"

  lifecycle {
     create_before_destroy = true
   }
}
