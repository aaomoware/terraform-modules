####  DB Event Subscription


###### Variables
```
variable name              { default = "" }
variable tags              { default = {} type = "map" }
variable prefix            { default = false }
variable enabled           { default = true }
variable sns_topic         {}
variable source_ids        { default = [] type = "list" }
variable source_type       { default = "" }
variable name_prefix       { default = "" }
variable event_categories  { default = [] type = "list" }
```

##### Outputs
```
output "id" {
  value = "${element(concat(aws_db_event_subscription.des.id,list("")),0)}"
}
output "arn" {
  value = "${element(concat(aws_db_event_subscription.des.arn,list("")),0)}"
}
output "customer_aws_id" {
  value = "${element(concat(aws_db_event_subscription.des.customer_aws_id,list("")),0)}"
}

#---prefix
output "id_prefix" {
  value = "${element(concat(aws_db_event_subscription.des_prefix.id,list("")),0)}"
}
output "arn_prefix" {
  value = "${element(concat(aws_db_event_subscription.des_prefix.arn,list("")),0)}"
}
output "customer_aws_id_prefix" {
  value = "${element(concat(aws_db_event_subscription.des_prefix.customer_aws_id,list("")),0)}"
}
```

###### Documentation
[aws_db_event_subscription](https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html)
