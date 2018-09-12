####  ACM Certificate

###### Variables
```
variable tags                      { default = {} type = "map" }
variable domain_name               {}
variable validation_method         {}
variable subject_alternative_names { default = [] type = "list" }
```

##### Outputs
```
output "id" {
  value = "${aws_acm_certificate.ac.id}"
}
output "arn" {
  value = "${aws_acm_certificate.ac.arn}"
}
output "validation_emails" {
  value = "${aws_acm_certificate.ac.validation_emails}"
}
output "domain_validation_options" {
  value = "${aws_acm_certificate.ac.domain_validation_options}"
}
```

###### Documentation
[aws_acm_certificate](https://www.terraform.io/docs/providers/aws/r/acm_certificate.html)
