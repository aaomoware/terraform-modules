#### Athena Database


###### Variables
```
variable name          { default = [] type = "list" }
variable bucket        { default = [] type = "list" }
variable force_destroy { default = false }
```

##### Outputs
```
output "athena_db_id" {
  value = "${aws_athena_database.athena_db.*.id}"
}
```

###### Documentation
[aws_athena_database](https://www.terraform.io/docs/providers/aws/r/athena_database.html)
