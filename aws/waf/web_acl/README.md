#### WAF Web ACL


###### Variables
```
variable name                { default = "" }
variable metric_name         { default = "" }

variable rules_id            { default = "" }
variable rules_type          { default = "" }
variable rules_priority      { default = "" }
variable rules_action_type   { default = "" }
variable default_action_type { default = "" }
```

##### Outputs
```
output "wwa_id" {
  value = "${aws_waf_web_acl.wwa.id}"
}
```

###### Documentation
[aws_waf_web_acl](https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html)
