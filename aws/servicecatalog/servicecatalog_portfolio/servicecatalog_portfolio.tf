resource "aws_servicecatalog_portfolio" "sp" {
  name          = "${var.name}"
  description   = "${var.description}"
  provider_name = "${var.provider_name}"

  tags = "${var.tags}"
}
