####  Service Catalog Portfolio


###### Variables
```
variable env           { default = "" }
variable name          { default = "" }
variable description   { default = "" }
variable provider_name { default = "" }
```

##### Outputs
```
output "sp_id" {
  value = "${aws_servicecatalog_portfolio.sp.id}"
}
```

###### Documentation
[aws_servicecatalog_portfolio](https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html)
