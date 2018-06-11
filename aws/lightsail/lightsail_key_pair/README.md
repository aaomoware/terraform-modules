####  Lightsail Key Pair


###### Variables
```
variable name          { default = "" }
variable pgp_key       { default = "" }
variable public_key    { default = "" }
```

##### Outputs
```
output "lkp_id" {
  value = "${aws_lightsail_key_pair.lkp.id}"
}
output "lkp_arn" {
  value = "${aws_lightsail_key_pair.lkp.arn}"
}
```

###### Documentation
[aws_lightsail_key_pair](https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html)
