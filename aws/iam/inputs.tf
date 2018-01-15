#-- roles & policies

variable "iam_role_name"                     { default = [] type = "list" }
variable "iam_role_description"              { default = {} type = "map" }
variable "iam_role_assume_role_policy"       { default = {} type = "map" }
variable "iam_role_force_detach_policies"    { default = true }

variable "iam_role_policy_name"              { default = [] type = "list" }
variable "iam_role_policy_role"              { default = {} type = "map" }
variable "iam_role_policy_policy"            { default = {} type = "map" }
