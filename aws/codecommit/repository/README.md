#### CodeCommit Repository


###### Variables
```
variable description      { default = "" }
variable default_branch   { default = "" }
variable repository_name  { default = "" }
```

##### Outputs
```
output "cr_arn" {
  value = "${aws_codecommit_repository.cr.arn}"
}
output "cr_repository_id" {
  value = "${aws_codecommit_repository.cr.repository_id}"
}
output "cr_clone_url_http" {
  value = "${aws_codecommit_repository.cr.clone_url_http}"
}
output "cr_clone_url_ssh" {
  value = "${aws_codecommit_repository.cr.clone_url_ssh}"
}
```

###### Documentation
[aws_codecommit_repository](https://www.terraform.io/docs/providers/aws/r/code_commit_repository.html)
