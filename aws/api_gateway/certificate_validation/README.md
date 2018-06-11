####  ACM Certificate Validation

###### Variables
```
variable create                  { default = "45m" }
variable certificate_arn         {}
variable validation_record_fqdns { default = [] type = "list" }
```

##### Outputs
```
output "certificate_arn" {
  value = "${aws_acm_certificate_validation.acv.certificate_arn}"
}
output "validation_record_fqdns" {
  value = "${aws_acm_certificate_validation.acv.validation_record_fqdns}"
}
```

###### Documentation
[aws_acm_certificate_validation](https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html)
