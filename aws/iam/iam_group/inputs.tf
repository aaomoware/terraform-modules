#-- groups & policies

variable "iam_group_path"                    { default = {} type = "map" }
variable "iam_group_names"                   { default = [] type = "list" }

variable "iam_group_policy_names"            { default = [] type = "list" }
variable "iam_group_policy_policy"           { default = {} type = "map" }
variable "iam_group_policy_groups"           { default = {} type = "map" }
variable "iam_group_policy_attachment_arn"   { default = [] type = "list" }
variable "iam_group_policy_attachment_group" { default = {} type = "map" }
