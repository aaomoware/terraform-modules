resource "aws_elb_attachment" "ea" {
  count = "${length(var.instance)}"

  elb      = "${var.elb}"
  instance = "${element(var.instance, count.index)}"
}
