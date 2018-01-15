#-- users

variable "iam_user_names"                    { default = [] type = "list" }
variable "iam_user_access_key"               { default = "true" }
variable "iam_user_gpg_keybase"              { default = {} type = "map" }
variable "iam_user_gpg_or_keybase"           { default = "" }
variable "iam_user_password_length"          { default = "11" }
variable "iam_user_group_membership_name"    { default = "" }
variable "iam_user_group_membership_group"   { default = [] type = "list"}
variable "iam_user_password_reset_required"  { default = true }
