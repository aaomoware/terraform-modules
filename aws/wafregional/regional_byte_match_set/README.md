#### WAF Regional Byte Match Set


###### Variables
```
variable name                   { default = "" }
variable data                   { default = "" }
variable type                   { default = "" }
variable target_string          { default = "" }
variable text_transformation    { default = "" }
variable positional_constraint  { default = "" }
```

##### Outputs
```
output "bt_id" {
  value = "${aws_wafregional_byte_match_set.byte_set.id}"
}
```

###### Documentation
[aws_wafregional_byte_match_set](https://www.terraform.io/docs/providers/aws/r/wafregional_byte_match_set.html)
