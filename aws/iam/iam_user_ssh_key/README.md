#### IAM User SSHh Key


###### Variables
```
variable status     { default = {} type = "map" }
variable username   { default = [] type = "list" }
variable encoding   { default = {} type = "map" }
variable public_key { default = {} type = "map" }
```

##### Outputs
```
resource "aws_iam_user_ssh_key" "user_sshk" {
  count      = "${length(var.username)}"
  username   = "${element(var.username, count.index)}"

  status     = "${var.status[element(var.username, count.index)]}"
  encoding   = "${var.encoding[element(var.username, count.index)]}"
  public_key = "${var.public_key[element(var.username, count.index)]}"
}
```

###### Documentation
[aws_iam_user_ssh_key](https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html)
