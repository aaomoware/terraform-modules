#### WAF Rule


###### Variables
```
variable name        { default = "" }
variable type        { default = "" }
variable data_id     { default = "" }
variable negated     { default = "" }
variable metric_name { default = "" }
```

##### Outputs
```
output "rule_id" {
  value = "${aws_waf_rule.rule.id}"
}
```

###### Documentation
[aws_waf_rule](https://www.terraform.io/docs/providers/aws/r/waf_rule.html)
