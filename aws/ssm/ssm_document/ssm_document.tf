resource "aws_ssm_document" "foo" {
  name          = "${var.name}"
  content       = "${var.content}"
  permission    = "${var.permission}"
  document_type = "${var.document_type}"
}
