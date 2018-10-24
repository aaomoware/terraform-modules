
output "id" {
  vaule = "${aws_eks_cluster.ec.id}"
}

output "arn" {
  vaule = "${aws_eks_cluster.ec.arn}"
}

output "certificate_authority" {
  vaule = "${aws_eks_cluster.ec.certificate_authority}"
}

output "certificate_authority_data" {
  vaule = "${aws_eks_cluster.ec.certificate_authority.0.data}"
}

output "endpoint" {
  vaule = "${aws_eks_cluster.ec.endpoint}"
}

output "platform_version" {
  vaule = "${aws_eks_cluster.ec.platform_version}"
}

output "version" {
  vaule = "${aws_eks_cluster.ec.version}"
}

output "vpc_id" {
  vaule = "${aws_eks_cluster.ec.vpc_config.vpc_id }"
}

output "vpc_config" {
  vaule = "${aws_eks_cluster.ec.vpc_config}"
}
