####  SES Template


###### Variables
```
variable name     { default = ""}
variable html     { default = ""}
variable text     { default = ""}
variable subject  { default = ""}
```

##### Outputs
```
output "st_id" {
  value = "${aws_ses_template.st.id}"
}
```

###### Documentation
[aws_ses_template](https://www.terraform.io/docs/providers/aws/r/ses_template.html)
