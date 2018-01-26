####  SSM Activation


###### Variables
```
variable name                { default = "" }
variable iam_role            { default = "" }
variable description         { default = "" }
variable expiration_date     { default = "" }
variable registration_limit  { default = "" }
```

##### Outputs
```
output "ssma_name" {
  value = "${aws_ssm_activation.ssma.name}"
}
output "ssma_expired" {
  value = "${aws_ssm_activation.ssma.expired}"
}
output "ssma_iam_role" {
  value = "${aws_ssm_activation.ssma.iam_role}"
}
output "ssma_description" {
  value = "${aws_ssm_activation.ssma.description}"
}
output "ssma_expiration_date" {
  value = "${aws_ssm_activation.ssma.expiration_date}"
}
output "ssma_activation_code" {
  value = "${aws_ssm_activation.ssma.activation_code}"
}
output "ssma_registration_count" {
  value = "${aws_ssm_activation.ssma.registration_count}"
}
output "ssma_registration_limit" {
  value = "${aws_ssm_activation.ssma.registration_limit}"
}
```

###### Documentation
[aws_ssm_activation](https://www.terraform.io/docs/providers/aws/r/ssm_activation.html)
