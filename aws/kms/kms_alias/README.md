####  KMS Alias


###### Variables
```
variable name          { default = "" }
variable name_prefix   { default = false }
variable target_key_id { default = "" }
```

##### Outputs
```
output "ka_arn" {
  value = "${aws_kms_alias.ka.arn}"
}
output "ka_prefix_arn" {
  value = "${aws_kms_alias.ka_prefix.arn}"
}
```

###### Documentation
[aws_kms_alias](https://www.terraform.io/docs/providers/aws/r/kms_alias.html)
