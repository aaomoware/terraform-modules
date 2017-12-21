module "route_53" {
  source = "git@github.com:aaomoware/terraform-modules.git//route53_zone"

  names = "${var.names}"
}
