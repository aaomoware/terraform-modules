resource "aws_lightsail_key_pair" "lkp" {
  name       = "${var.name}"
  pgp_key    = "${var.pgp_key}"
  public_key = "${var.public_key}"
}
