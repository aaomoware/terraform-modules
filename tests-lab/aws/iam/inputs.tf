variable "iam_user_names"                       { type = "list"}
variable "iam_user_gpg_keybase"                 { type = "map" }
variable "iam_user_gpg_or_keybase"              { }
variable "iam_user_group_membership_name"       { }
variable "iam_user_group_membership_group"      { type = "list"}
variable "iam_user_password_reset_required"     { }

# - groups
variable "iam_group_path"                       { type = "map" }
variable "iam_group_names"                      { type = "list" }

variable "iam_group_policy_names"               { type = "list" }
variable "iam_group_policy_policy"              { type = "map" }
variable "iam_group_policy_groups"              { type = "map" }

# - roles
variable "iam_role_name"                        { type = "list" }
variable "iam_role_description"                 { type = "map" }
variable "iam_role_assume_role_policy"          { type = "map" }

variable "iam_role_policy_name"                 { type = "list" }
variable "iam_role_policy_role"                 { type = "map" }
variable "iam_role_policy_policy"               { type = "map" }
