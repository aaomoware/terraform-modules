####  AWS Organizations Policy


###### Variables
```
variable name         {}
variable content      {}

variable type         { default = "" }
variable description  { default = "" }
```

##### Outputs
```
output "id" {
  value = "${aws_organizations_policy.op.id}"
}
output "arn" {
  value = "${aws_organizations_policy.op.arn}"
}
```

###### Documentation
[aws_organizations_policy](https://www.terraform.io/docs/providers/aws/r/organizations_policy.html)
