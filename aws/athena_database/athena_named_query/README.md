#### Athena Named Query


###### Variables
```
variable name        { default = "" }
variable query       { default = "" }
variable database    { default = "" }
variable description { default = "" }
```

##### Outputs
```
output "athena_named_query_id" {
  value = "${aws_athena_named_query.athena_named_query.id}"
}
```

###### Documentation
[aws_athena_named_query](https://www.terraform.io/docs/providers/aws/r/athena_named_query.html)
