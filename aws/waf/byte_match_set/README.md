#### WAF Byte Match Set


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
output "bs_id" {
  value = "${aws_waf_byte_match_set.bs.id}"
}
```

###### Documentation
[aws_waf_byte_match_set](https://www.terraform.io/docs/providers/aws/r/waf_byte_match_set.html)
