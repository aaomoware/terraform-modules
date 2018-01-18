resource "aws_lightsail_static_ip_attachment" "lsia" {
  instance_name  = "${var.instance_name}"
  static_ip_name = "${var.static_ip_name}"
}
