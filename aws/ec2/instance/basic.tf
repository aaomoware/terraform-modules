resource "aws_instance" "basic" {
  count = "${var.basic ? 1: 0}"

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
  ipv6_addresses                       = "${var.ipv6_addresses}"
  security_groups                      = ["${var.security_groups}"]
  placement_group                      = "${var.placement_group}"
  user_data_base64                     = "${var.user_data_base64}"
  source_dest_check                    = "${var.source_dest_check}"
  get_password_data                    = "${var.get_password_data}"
  availability_zone                    = "${var.availability_zone}"
  ipv6_address_count                   = "${var.ipv6_address_count}"
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

  root_block_device {
    iops                  = "${var.root_iops}"
    volume_type           = "${var.root_volume_type}"
    volume_size           = "${var.root_volume_size}"
    delete_on_termination = "${var.root_delete_on_termination}"
  }

  ebs_block_device {
    iops                  = "${var.ebs_iops}"
    encrypted             = "${var.encrypted}"
    device_name           = "${var.ebs_device_name}"
    snapshot_id           = "${var.snapshot_id}"
    volume_type           = "${var.ebs_volume_type}"
    volume_size           = "${var.ebs_volume_size}"
    delete_on_termination = "${var.ebs_delete_on_termination}"
  }

  ephemeral_block_device {
    no_device             = "${var.no_device}"
    device_name           = "${var.ephemeral_device_name}"
    virtual_name          = "${var.virtual_name}"
  }

  credit_specification {
   cpu_credits = "${var.cpu_credits}"
  }

   tags = "${var.tags}"
}
