#### IAM Saml Provider


###### Variables
```
variable name                   { default = "" }
variable saml_metadata_document { default = "" }
```

##### Outputs
```
output "sp_arn" {
  value = "${aws_iam_saml_provider.sp.arn}"
}
output "sp_valid_until" {
  value = "${aws_iam_saml_provider.sp.valid_until}"
}
```

###### Documentation
[aws_iam_saml_provider](https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html)
