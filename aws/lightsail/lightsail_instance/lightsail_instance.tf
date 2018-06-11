resource "aws_lightsail_instance" "li" {
  count             = "${length(var.name)}"

  name              = "${element(var.name, count.index)}"
  bundle_id         = "${var.bundle_id}"
  blueprint_id      = "${var.blueprint_id}"
  key_pair_name     = "${var.key_pair_name}"
  availability_zone = "${var.availability_zone}"
}
