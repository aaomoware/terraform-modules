## IAM Module; Creates:
#### * User(s)
#### * Role(s)
#### * Group(s)

This module will assume certain default values. These defaults are in place to provide flexibility and to strictly adhere to Terraforms' idempotency.
We are, in this module, treating each resource like programmable function; i.e, we can call a resouce to perform a task without having to execute other resouces defind in the module; thanks to count!.

In addition, we are using every output for input; that is, every exported attributes is an input; if two or more resouces, functions, work together. If a resouce, function works alone, inputs are picked from a user's define .tfvars - flexibility. A combination of the user define variables and input can also be used.

An example of treating resources like functions is to use count to determine if a resouce will execute or not:
```
count = "${var.iam_group_policy_attachment ? length(var.iam_group_policy_attachment_arn) : 0}"
```

### User Function: aws_iam_user
keys are encrypted using gpg keys of each user. Without a gpg key, passed literallty or gotten by "keybase:username" combination, an iam access key won't be created for the user; the aws_iam_access_key function, resource, will be skipped.
```
resource "aws_iam_access_key" "user_access_key" {
  count = "${var.iam_user_gpg_or_keybase == "gpg" || var.iam_user_gpg_or_keybase == "keybase" && var.iam_user_access_key ? length(var.iam_user_names) : 0}"
  user = "${element(aws_iam_user.user.*.name,count.index)}"
  pgp_key = "${var.iam_user_gpg_keybase[element(aws_iam_user.user.*.name,count.index)]}"
}
```

Passwords are encrypted using gpg keys of each user. Without a gpg key, passed literallty in quotes, or retrieve from keybase using "keybase:username" combination, a login profile won't be created for the user; the aws_iam_user_login_profile will be skipped.
```
resource "aws_iam_user_login_profile" "user_login_profile" {
  count = "${var.iam_user_gpg_or_keybase == "gpg" || var.iam_user_gpg_or_keybase == "keybase" ? length(var.iam_user_names) : 0}"
  user = "${element(aws_iam_user.user.*.name,count.index)}"
  password_length = "${var.iam_user_password_length}"
  password_reset_required = "${var.iam_user_password_reset_required}"
  pgp_key = "${var.iam_user_gpg_keybase[element(aws_iam_user.user.*.name,count.index)]}"
}
```

#### Decrypting user passwords: using keybase profile
```
➜  iam-test git:(master) ✗ terraform output iam_user_login_profile_password | base64 --decode | keybase pgp decrypt
r'fR4=R4mY6
➜  iam-test git:(master) ✗
```

### aws_iam_user default variables
```
variable "iam_user_password_length"          { default = "11" }
variable "iam_user_access_key"               { default = true }
```

### aws_iam_user variable types
```
variable "iam_user_names"                    { type = "list" }
variable "iam_user_gpg_keybase"              { type = "map" }
variable "iam_user_group_membership_group"   { type = "list"}
```


### Group Functions: aws_iam_group, aws_iam_group_policy, aws_iam_group_policy_attachment

Groups can be created and paths associated to each group. The group resource takes a name and path; the name is expected to be a list, while the path is expected to be a map
```
variable "iam_group_path"                    { type = "map" }
variable "iam_group_names"                   { type = "list" }
```

Below is an example of the ``name`` and ``path`` format expected by aws_iam_group:
```
iam_group_names = [
  "sales_team",
  "accounts_team,"
  "devops_engineers"
]

iam_group_path = {
  sales_team = "path/to/sales_team"
  accounts_team = "path/to/accounts_team"
  devops_engineers = "path/to/devops_engineers"
}
```
``iam_group_path`` will default to ``/`` if not provided
```
path = "${values(var.iam_group_path) ? var.iam_group_path[element(var.iam_group_names,count.index)] : "/" }"
```

### aws_iam_group_policy

The ``aws_iam_group_policy`` and ``aws_iam_group_policy_attachment`` are independent of the ``aws_iam_group``. This is done to provide flexibility - i.e: you can create a ``aws_iam_group_policy`` and ``aws_iam_group_policy_attachment`` without having to use the groups created by the ``aws_iam_group``; but provide a lists of already existing group names.

``aws_iam_group_policy`` and ``aws_iam_group_policy_attachment`` has no defaults; all variables are required to be assigned a value from main.tf.

### Variable structure and types
#### Variables
```
variable "iam_group_policy_names"            { type = "list" }
variable "iam_group_policy_groups"           { type = "map" }
variable "iam_group_policy_policy"           { type = "map" }

variable "iam_group_policy_attachment_arn"   { type = "list" }
variable "iam_group_policy_attachment_group" { type = "map" }
```
#### Structure and types
```
iam_group_policy_names = ["for_devops_engineers","for_sales_teams","for_account_teams"]

iam_group_policy_groups = {
  for_sales_teams = "sales_team"
  for_account_teams = "accounts_team"
  for_devops_engineers = "devops_engineers"
}

iam_group_policy_policy = {
  for_sales_teams = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

for_account_teams = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

for_devops_engineers = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
```

```
iam_group_policy_attachment_group = ["devops_engineers","sales_team","accounts_team"]
iam_group_policy_attachment_arn   = {
  devops_engineers = "arn:aws:iam::aws:policy/service-role/VMImportExportRoleForAWSConnector"
  sales_team = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
  accounts_team = "arn:aws:iam::aws:policy/job-function/SupportUser"
}
```


### Role Functions: aws_iam_role, aws_iam_role_policy
Creates role and role policy.

### Variables, Structure & Types
#### Variables
```
variable "iam_role_name"                     { type = "list" }
variable "iam_role_description"              { type = "map" }
variable "iam_role_assume_role_policy"       { type = "map" }
variable "iam_role_force_detach_policies"    { default = "true" }

variable "iam_role_policy_name"              { type = "list" }
variable "iam_role_policy_role"              { type = "list" }
variable "iam_role_policy_policy"            { type = "map" }
```

#### Structure & types
```
iam_role_name = ["sales_team", "accounts_team", "devops_engineers"]

iam_role_description = = {
  sales_team = "This role is for the sales team"
  accounts_team = "This role is for the accounts team"
  devops_engineers = "This role is for the devops engineers"
}

iam_role_assume_role_policy = {
  sales_team = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

accounts_team = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

devops_engineers = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
```
```
iam_role_policy_name = ["salesteam","accountsteam","devopsengineers"]
iam_role_policy_role = {
  salesteam = "sales_team"
  accountsteam = "accounts_team"
  devopsengineers = "devops_engineers"
}
iam_role_policy_policy = {
  sales_team = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

accounts_team = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

devops_engineers = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
```



### Future enhancement features:
* Add aws_iam_policy
* Dropping gpg encrypted passwords and access keys to a location: s3
* Or email each users their gpg encrypted password, access keys; user emails needed therefore.
