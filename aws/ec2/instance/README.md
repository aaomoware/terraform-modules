<!-- implement support for -->
* ipv6_address_count
* user_data_base64
* ipv6_addresses

<!-- and -->
```  root_block_device {
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
  }```
