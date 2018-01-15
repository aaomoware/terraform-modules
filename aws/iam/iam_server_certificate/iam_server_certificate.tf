resource "aws_iam_server_certificate" "cert_prefix" {
  count             = "${var.prefix ? 1 : 0}"
  name_prefix       = "${var.name}"
  path              = "${var.cert_path}"
  private_key       = "${var.private_key}"
  certificate_body  = "${var.certificate_body}"
  certificate_chain = "${var.certificate_chain}"

  lifecycle {
    create_before_destroy = true
  }
}
resource "aws_iam_server_certificate" "cert" {
  count             = "${var.prefix ? 0 : 1}"
  name              = "${var.name}"
  path              = "${var.cert_path}"
  private_key       = "${var.private_key}"
  certificate_body  = "${var.certificate_body}"
  certificate_chain = "${var.certificate_chain}"

  lifecycle {
    create_before_destroy = true
  }
}
