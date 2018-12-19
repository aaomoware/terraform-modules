
output "id" {
  value = "${aws_eks_cluster.ec.id}"
}

output "arn" {
  value = "${aws_eks_cluster.ec.arn}"
}

output "certificate_authority" {
  value = "${aws_eks_cluster.ec.certificate_authority}"
}

output "certificate_authority_data" {
  value = "${aws_eks_cluster.ec.certificate_authority.0.data}"
}

output "endpoint" {
  value = "${aws_eks_cluster.ec.endpoint}"
}

output "platform_version" {
  value = "${aws_eks_cluster.ec.platform_version}"
}

output "version" {
  value = "${aws_eks_cluster.ec.version}"
}

output "vpc_config" {
  value = "${aws_eks_cluster.ec.vpc_config}"
}
