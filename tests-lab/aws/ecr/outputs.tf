output "arn" {
  value = "${module.ecr.arn}"
}

output "name" {
  value = "${module.ecr.name}"
}

output "repository_url" {
  value = "${module.ecr.repository_url}"
}
