resource "aws_iam_openid_connect_provider" "ocp" {
    url = "${var.url}"
    client_id_list = "${var.client_id_list}"
    thumbprint_list = "${var.thumbprint_list}"
}
