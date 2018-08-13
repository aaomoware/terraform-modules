# - application lb with access_logs and subnet mappings
resource "aws_lb" "alm" {
  count = "${var.lb_type == "application" && var.logs && var.maps ? 1 : 0}"

  tags               = "${var.tags}"
  name               = "${var.name}"
  subnets            = ["${var.subnets}"]
  internal           = "${var.internal}"
  access_logs        = "${var.access_logs}"
  enable_http2       = "${var.enable_http2}"
  idle_timeout       = "${var.idle_timeout}"
  subnet_mapping     = "${var.subnet_mapping}"
  security_groups    = ["${var.security_groups}"]
  ip_address_type    = "${var.ip_address_type}"
  load_balancer_type = "${var.load_balancer_type}"
  enable_deletion_protection = "${var.enable_deletion_protection}"
}

# - application lb with access_logs without subnet mappings
resource "aws_lb" "al" {
  count = "${var.lb_type == "application" && var.logs && !var.maps ? 1 : 0}"

  tags               = "${var.tags}"
  name               = "${var.name}"
  subnets            = ["${var.subnets}"]
  internal           = "${var.internal}"
  access_logs        = "${var.access_logs}"
  enable_http2       = "${var.enable_http2}"
  idle_timeout       = "${var.idle_timeout}"
  security_groups    = ["${var.security_groups}"]
  ip_address_type    = "${var.ip_address_type}"
  load_balancer_type = "${var.load_balancer_type}"
  enable_deletion_protection = "${var.enable_deletion_protection}"
}

# - application lb with subne mapping but without access logs
resource "aws_lb" "am" {
  count = "${var.lb_type == "application" && var.maps && !var.logs ? 1 : 0}"


  tags               = "${var.tags}"
  name               = "${var.name}"
  subnets            = ["${var.subnets}"]
  internal           = "${var.internal}"
  enable_http2       = "${var.enable_http2}"
  idle_timeout       = "${var.idle_timeout}"
  subnet_mapping     = "${var.subnet_mapping}"
  security_groups    = ["${var.security_groups}"]
  ip_address_type    = "${var.ip_address_type}"
  load_balancer_type = "${var.load_balancer_type}"
  enable_deletion_protection = "${var.enable_deletion_protection}"
}

# - application lb without subne mapping & without access logs
resource "aws_lb" "a" {
  count = "${var.lb_type == "application" && !var.maps && !var.logs ? 1 : 0}"


  tags               = "${var.tags}"
  name               = "${var.name}"
  subnets            = ["${var.subnets}"]
  internal           = "${var.internal}"
  enable_http2       = "${var.enable_http2}"
  idle_timeout       = "${var.idle_timeout}"
  security_groups    = ["${var.security_groups}"]
  ip_address_type    = "${var.ip_address_type}"
  load_balancer_type = "${var.load_balancer_type}"
  enable_deletion_protection = "${var.enable_deletion_protection}"
}


# - network lb with subne mapping
resource "aws_lb" "nm" {
  count = "${var.lb_type == "network" && var.maps ? 1 : 0}"


  tags               = "${var.tags}"
  name               = "${var.name}"
  subnets            = ["${var.subnets}"]
  internal           = "${var.internal}"
  subnet_mapping     = "${var.subnet_mapping}"
  ip_address_type    = "${var.ip_address_type}"
  load_balancer_type = "${var.load_balancer_type}"
  enable_deletion_protection = "${var.enable_deletion_protection}"
  enable_cross_zone_load_balancing = "${var.enable_cross_zone_load_balancing}"
}

# - network lb with subne mapping
resource "aws_lb" "n" {
  count = "${var.lb_type == "network" && !var.maps ? 1 : 0}"


  tags               = "${var.tags}"
  name               = "${var.name}"
  subnets            = ["${var.subnets}"]
  internal           = "${var.internal}"
  ip_address_type    = "${var.ip_address_type}"
  load_balancer_type = "${var.load_balancer_type}"
  enable_deletion_protection = "${var.enable_deletion_protection}"
  enable_cross_zone_load_balancing = "${var.enable_cross_zone_load_balancing}"
}
