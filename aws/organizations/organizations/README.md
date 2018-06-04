####  AWS Organizations Organization


###### Variables
```
variable feature_set { default = "ALL" }
```

##### Outputs
```
output "id" {
  value = "${aws_organizations_organization.oo.id}"
}
output "arn" {
  value = "${aws_organizations_organization.oo.arn}"
}
output "master_account_id" {
  value = "${aws_organizations_organization.oo.master_account_id}"
}
output "master_account_arn" {
  value = "${aws_organizations_organization.oo.master_account_arn}"
}
output "master_account_email" {
  value = "${aws_organizations_organization.oo.master_account_email}"
}
```

###### Documentation
[aws_organizations_organization](https://www.terraform.io/docs/providers/aws/r/organizations_organization.html)
