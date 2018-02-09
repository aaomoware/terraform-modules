#### WAF XSS Match Set


###### Variables
```
variable name                { default = "" }
variable type                { default = "" }
variable text_transformation { default = "" }
```

##### Outputs
```
output "xms_id" {
  value = "${aws_waf_xss_match_set.xms.id}"
}
```

###### Documentation
[aws_waf_xss_match_set](https://www.terraform.io/docs/providers/aws/r/waf_xss_match_set.html)
