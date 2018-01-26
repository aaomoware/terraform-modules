####  SES Domain DKIM


###### Variables
```
variable domain { default = "" }
```

##### Outputs
```
output "sdd_dkim_tokens" {
  value = "${aws_ses_domain_dkim.sdd.dkim_tokens}"
}
```

###### Documentation
[aws_ses_domain_dkim](https://www.terraform.io/docs/providers/aws/r/ses_domain_dkim.html)
