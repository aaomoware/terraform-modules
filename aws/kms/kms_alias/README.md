####  KMS Alias


###### Variables
```
variable name          { default = "" }
variable name_prefix   { default = false }
variable target_key_id { default = "" }
```

##### Outputs
```
resource "aws_kms_alias" "ka" {
  name          = "${var.name}"
  target_key_id = "${var.target_key_id}"
}

resource "aws_kms_alias" "ka_prefix" {
  count          = "${var.name_prefix ? 1 : 0}"
  name_prefix    = "${var.name}"
  target_key_id  = "${var.target_key_id}"

  lifecycle {
    create_before_destroy = true
  }
}
```

###### Documentation
[aws_kms_alias](https://www.terraform.io/docs/providers/aws/r/kms_alias.html)
