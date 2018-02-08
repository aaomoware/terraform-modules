#### WAF Size Constraint Set


###### Variables
```
variable name                { default = "" }
variable size                { default = "" }
variable data                { default = "" }
variable field_to_match      { default = "" }
variable comparison_operator { default = "" }
variable text_transformation { default = "" }
```

##### Outputs
```
output "scs_id" {
  value = "${aws_waf_size_constraint_set.scs.id}"
}
```

###### Documentation
[aws_waf_size_constraint_set](https://www.terraform.io/docs/providers/aws/r/waf_size_constraint_set.html)
