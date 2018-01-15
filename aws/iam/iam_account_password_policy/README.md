#### IAM Account Password Policy


###### Variables
```
variable hard_expiry                     { default = "" }
variable require_numbers                 { default = "" }
variable require_symbols                 { default = "" }
variable max_password_age                { default = "" }
variable minimum_password_length         { default = "" }
variable password_reuse_prevention       { default = "" }
variable require_lowercase_characters    { default = "" }
variable require_uppercase_characters    { default = "" }
variable allow_users_to_change_password  { default = "" }
```

##### Outputs
```
output "ap_expire_passwords" {
  value = "${aws_iam_account_password_policy.ap.expire_passwords}"
}
```

###### Documentation
[ aws_iam_account_password_policy](https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html)
