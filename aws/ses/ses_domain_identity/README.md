####  SES Domain Identity


###### Variables
```
variable domain { default = "" }
```

##### Outputs
```
output "sdi_arn" {
  value = "${aws_ses_domain_identity.sdi.arn}"
}
output "sdi_verification_token" {
  value = "${aws_ses_domain_identity.sdi.verification_token }"
}
```

###### Documentation
[aws_ses_domain_identity](https://www.terraform.io/docs/providers/aws/r/ses_domain_identity.html)
