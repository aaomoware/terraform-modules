resource "aws_network_interface_attachment" "nia" {
    instance_id          = "${var.instance_id}"
    device_index         = "${var.device_index}"
    network_interface_id = "${var.network_interface_id}"
}
