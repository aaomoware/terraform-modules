resource "aws_iam_account_password_policy" "ap" {

  hard_expiry                     = "${var.hard_expiry}"
  require_numbers                 = "${var.require_numbers}"
  require_symbols                 = "${var.require_symbols}"
  max_password_age                = "${var.max_password_age}"
  minimum_password_length         = "${var.minimum_password_length}"
  password_reuse_prevention       = "${var.password_reuse_prevention}"
  require_lowercase_characters    = "${var.require_lowercase_characters}"
  require_uppercase_characters    = "${var.require_uppercase_characters}"
  allow_users_to_change_password  = "${var.allow_users_to_change_password}"
}
