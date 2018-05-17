resource "aws_instance" "network" {
  count = "${var.network ? 1: 0}"

  ami                                  = "${var.ami}"
  tenancy                              = "${var.tenancy}"
  key_name                             = "${var.key_name}"
  subnet_id                            = "${var.subnet_id}"
  user_data                            = "${var.user_data}"
  monitoring                           = "${var.monitoring}"
  private_ip                           = "${var.private_ip}"
  volume_tags                          = "${var.volume_tags}"
  instance_type                        = "${var.instance_type}"
  ebs_optimized                        = "${var.ebs_optimized}"
  security_groups                      = ["${var.security_groups}"]
  placement_group                      = "${var.placement_group}"
  source_dest_check                    = "${var.source_dest_check}"
  get_password_data                    = "${var.get_password_data}"
  availability_zone                    = "${var.availability_zone}"
  iam_instance_profile                 = "${var.iam_instance_profile}"
  vpc_security_group_ids               = ["${var.vpc_security_group_ids}"]
  disable_api_termination              = "${var.disable_api_termination}"
  associate_public_ip_address          = "${var.associate_public_ip_address}"
  instance_initiated_shutdown_behavior = "${var.instance_initiated_shutdown_behavior}"

  timeouts {
    create = "${var.create}"
    update = "${var.update}"
    delete = "${var.delete}"
  }

  credit_specification {
   cpu_credits = "${var.cpu_credits}"
  }

  network_interface {
    device_index          =  "${var.device_index}"
    network_interface_id  =  "${var.network_interface_id}"
    delete_on_termination =  "${var.net_delete_on_termination}"
  }

   tags = "${var.tags}"
}
