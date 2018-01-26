####  SimpleDB Domain


###### Variables
```
variable name { default = "" }
```

##### Outputs
```
output "sdbd_id" {
  value = "${aws_simpledb_domain.sdbd.id}"
}
```

###### Documentation
[aws_simpledb_domain](https://www.terraform.io/docs/providers/aws/r/simpledb_domain.html)
