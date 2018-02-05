resource "aws_ses_template" "st" {
  name    = "${var.name}"
  html    = "${var.html}"
  text    = "${var.text}"
  subject = "${var.subject}"
}
