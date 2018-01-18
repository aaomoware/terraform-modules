####  KMS Key


###### Variables
```
variable env                        { default = "" }
variable name                       { default = "" }
variable policy                     { default = "" }
variable key_usage                  { default = "" }
variable is_enabled                 { default = "" }
variable description                { default = "" }
variable enable_key_rotation        { default = "" }
variable deletion_window_in_days    { default = "" }
```

##### Outputs
```
output "kk_arn" {
  value = "${aws_kms_key.kk.arn}"
}
output "kk_key_id" {
  value = "${aws_kms_key.kk.key_id}"
}
```

###### Documentation
[aws_kms_key](https://www.terraform.io/docs/providers/aws/r/kms_key.html)
