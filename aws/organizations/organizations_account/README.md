####  AWS Organizations Account


###### Variables
```
variable name                        {}
variable email                       {}
variable role_name                   { default = "" }
variable iam_user_access_to_billing  { default = "" }
```

##### Outputs
```
output "arn" {
  value = "${aws_organizations_account.oa.arn}"
}
```

###### Documentation
[aws_organizations_account](https://www.terraform.io/docs/providers/aws/r/organizations_account.html)
