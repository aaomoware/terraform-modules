resource "aws_launch_configuration" "lc_base64" {
  count = "${var.user_data_base64 != "" ? 1 : 0}"

  name_prefix           = "${var.name_prefix}"
  key_name              = "${var.key_name}"
  image_id              = "${var.image_id}"
  instance_type         = "${var.instance_type}"
  security_groups       = ["${var.security_groups}"]
  user_data_base64      = "${var.user_data_base64}"
  iam_instance_profile  = "${var.iam_instance_profile}"
  associate_public_ip_address = "${var.associate_public_ip_address}"

  lifecycle {
     create_before_destroy = true
   }
}


resource "aws_launch_configuration" "lc" {
  count = "${var.user_data != "" ? 1 : 0}"

  name_prefix           = "${var.name_prefix}"
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
