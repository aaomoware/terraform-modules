resource "aws_organizations_account" "oa" {
  name                       = "${var.name}"
  email                      = "${var.email}"
  role_name                  = "${var.role_name}"
  iam_user_access_to_billing = "${var.iam_user_access_to_billing}"
}
