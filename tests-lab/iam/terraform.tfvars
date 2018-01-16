iam_user_names                       = ["orange","mango"]
iam_user_access_key                  = "true"
iam_user_gpg_keybase                 = { orange = "keybase:aaomoware" mango = "keybase:aaomoware" }
iam_user_gpg_or_keybase              = "keybase"
iam_user_group_membership_name       = "testing-lab"
iam_user_group_membership_group      = ["terraform"]
iam_user_password_reset_required     = false

# - groups
iam_group_path                       = { sales_team = "/path/to/sales_team/" accounts_team = "/path/to/accounts_team/" devops_engineers = "/" }
iam_group_names                      = [ "sales_team", "accounts_team", "devops_engineers" ]

iam_group_policy_names               = ["sales_team", "accounts_team", "devops_engineers"]
iam_group_policy_policy              = {
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

iam_group_policy_groups = {
  sales_team = "sales_team"
  accounts_team = "accounts_team"
  devops_engineers = "devops_engineers"
}


# - role

iam_role_name = ["sales_team", "accounts_team", "devops_engineers" ]
iam_role_description = {
  sales_team = "This role is for the sales team"
  accounts_team = "This role is for th accounts team"
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


iam_role_policy_name = [ "sales_team", "accounts_team", "devops_engineers" ]
iam_role_policy_role = {
  sales_team = "sales_team"
  accounts_team = "accounts_team"
  devops_engineers = "devops_engineers"
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
