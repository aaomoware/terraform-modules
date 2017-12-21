module "iam" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/iam"

# - users
  iam_user_names                       = "${var.iam_user_names}"
  iam_user_gpg_keybase                 = "${var.iam_user_gpg_keybase}"
  iam_user_gpg_or_keybase              = "${var.iam_user_gpg_or_keybase}"
  iam_user_group_membership_name       = "${var.iam_user_group_membership_name}"
  iam_user_group_membership_group      = "${var.iam_user_group_membership_group}"
  iam_user_password_reset_required     = "${var.iam_user_password_reset_required}"

# - groups
  iam_group_path                       = "${var.iam_group_path}"
  iam_group_names                      = "${var.iam_group_names}"

  iam_group_policy_names               = "${var.iam_group_policy_names}"
  iam_group_policy_policy              = "${var.iam_group_policy_policy}"
  iam_group_policy_groups              = "${var.iam_group_policy_groups}"

# - roles
  iam_role_name                        = "${var.iam_role_name}"
  iam_role_description                 = "${var.iam_role_description}"
  iam_role_assume_role_policy          = "${var.iam_role_assume_role_policy}"

  iam_role_policy_name                 = "${var.iam_role_policy_name}"
  iam_role_policy_role                 = "${var.iam_role_policy_role}"
  iam_role_policy_policy               = "${var.iam_role_policy_policy}"
}
