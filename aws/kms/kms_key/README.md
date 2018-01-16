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
resource "aws_kms_key" "kk" {
  env                     = "${var.env}"
  policy                  = "${var.policy}"
  key_usage               = "${var.key_usage}"
  is_enabled              = "${var.is_enabled}"
  description             = "${var.description}"
  deletion_window_in_days = "${var.deletion_window_in_days}"

  tags {
    Env = "${var.env}"
    Name = "${var.name}"
    description = "${var.description}"
  }
}
```

###### Documentation
[aws_kms_key](https://www.terraform.io/docs/providers/aws/r/kms_key.html)
