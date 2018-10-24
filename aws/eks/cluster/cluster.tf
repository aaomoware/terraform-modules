resource "aws_eks_cluster" "ec" {
  name     = "${var.name}"
  version  = "${var.version}"
  role_arn = "${var.role_arn}"

  vpc_config {
    subnet_ids  = ["${var.subnet_ids}"]
    security_group_ids = ["${var.security_group_ids}"]
  }

  timeouts {
    create = "${var.create}"
    delete = "${var.delete}"
  }
}
