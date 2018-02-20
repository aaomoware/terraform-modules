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
