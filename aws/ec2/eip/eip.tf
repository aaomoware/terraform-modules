resource "aws_eip" "eip" {
    vpc                       = "${var.vpc}"
    tags                      = "${var.tags}"
    instance                  = "${var.instance}"
    network_interface         = "${var.network_interface}"
    associate_with_private_ip = "${var.associate_with_private_ip}"
}
