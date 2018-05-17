#---basic
output "b_id" {
  value = "${element(concat(aws_s3_bucket.b.*.id, list("")), 0)}"
}
output "b_arn" {
  value = "${element(concat(aws_s3_bucket.b.*.arn, list("")), 0)}"
}
output "b_region" {
  value = "${element(concat(aws_s3_bucket.b.*.region, list("")), 0)}"
}
output "b_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.b.*.hosted_zone_id, list("")), 0)}"
}
output "b_website_domain" {
  value = "${element(concat(aws_s3_bucket.b.*.website_domain, list("")), 0)}"
}
output "b_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.b.*.website_endpoint, list("")), 0)}"
}
output "b_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.b.*.bucket_domain_name, list("")), 0)}"
}
#---basic with prefix
output "bp_id" {
  value = "${element(concat(aws_s3_bucket.bp.*.id, list("")), 0)}"
}
output "bp_arn" {
  value = "${element(concat(aws_s3_bucket.bp.*.arn, list("")), 0)}"
}
output "bp_region" {
  value = "${element(concat(aws_s3_bucket.bp.*.region, list("")), 0)}"
}
output "bp_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.bp.*.hosted_zone_id, list("")), 0)}"
}
output "bp_website_domain" {
  value = "${element(concat(aws_s3_bucket.bp.*.website_domain, list("")), 0)}"
}
output "bp_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.bp.*.website_endpoint, list("")), 0)}"
}
output "bp_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.bp.*.bucket_domain_name, list("")), 0)}"
}
#---basic with logging
output "bl_id" {
  value = "${element(concat(aws_s3_bucket.bl.*.id, list("")), 0)}"
}
output "bl_arn" {
  value = "${element(concat(aws_s3_bucket.bl.*.arn, list("")), 0)}"
}
output "bp_region" {
  value = "${element(concat(aws_s3_bucket.bl.*.region, list("")), 0)}"
}
output "bl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.bl.*.hosted_zone_id, list("")), 0)}"
}
output "bl_website_domain" {
  value = "${element(concat(aws_s3_bucket.bl.*.website_domain, list("")), 0)}"
}
output "bl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.bl.*.website_endpoint, list("")), 0)}"
}
output "bl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.bl.*.bucket_domain_name, list("")), 0)}"
}
#---basic prefix with logging
output "bpl_id" {
  value = "${element(concat(aws_s3_bucket.bpl.*.id, list("")), 0)}"
}
output "bpl_arn" {
  value = "${element(concat(aws_s3_bucket.bpl.*.arn, list("")), 0)}"
}
output "bpl_region" {
  value = "${element(concat(aws_s3_bucket.bpl.*.region, list("")), 0)}"
}
output "bpl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.bpl.*.hosted_zone_id, list("")), 0)}"
}
output "bpl_website_domain" {
  value = "${element(concat(aws_s3_bucket.bpl.*.website_domain, list("")), 0)}"
}
output "bpl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.bpl.*.website_endpoint, list("")), 0)}"
}
output "bpl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.bpl.*.bucket_domain_name, list("")), 0)}"
}

#---encryption
output "e_id" {
  value = "${element(concat(aws_s3_bucket.e.*.id, list("")), 0)}"
}
output "e_arn" {
  value = "${element(concat(aws_s3_bucket.e.*.arn, list("")), 0)}"
}
output "e_region" {
  value = "${element(concat(aws_s3_bucket.e.*.region, list("")), 0)}"
}
output "e_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.e.*.domain_name, list("")), 0)}"
}
output "e_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.e.*.hosted_zone_id, list("")), 0)}"
}
output "e_website_domain" {
  value = "${element(concat(aws_s3_bucket.e.*.website_domain, list("")), 0)}"
}
output "e_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.e.*.website_endpoint, list("")), 0)}"
}
#---encryption with prefix
output "ep_id" {
  value = "${element(concat(aws_s3_bucket.ep.*.id, list("")), 0)}"
}
output "ep_arn" {
  value = "${element(concat(aws_s3_bucket.ep.*.arn, list("")), 0)}"
}
output "ep_region" {
  value = "${element(concat(aws_s3_bucket.ep.*.region, list("")), 0)}"
}
output "ep_website_domain" {
  value = "${element(concat(aws_s3_bucket.ep.*.website_domain, list("")), 0)}"
}
output "ep_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.ep.*.hosted_zone_id, list("")), 0)}"
}
output "ep_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.ep.*.website_endpoint, list("")), 0)}"
}
output "ep_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.ep.*.bucket_domain_name, list("")), 0)}"
}
#---encryption with logging
output "el_id" {
  value "${element(concat(aws_s3_bucket.el.*.id, list("")), 0)}"
}
output "el_arn" {
  value "${element(concat(aws_s3_bucket.el.*.arn, list("")), 0)}"
}
output "el_region" {
  value "${element(concat(aws_s3_bucket.el.*.region, list("")), 0)}"
}
output "el_website_domain" {
  value "${element(concat(aws_s3_bucket.el.*.website_domain, list("")), 0)}"
}
output "el_hosted_zone_id" {
  value "${element(concat(aws_s3_bucket.el.*.hosted_zone_id, list("")), 0)}"
}
output "el_website_endpoint" {
  value "${element(concat(aws_s3_bucket.el.*.website_endpoint, list("")), 0)}"
}
output "el_bucket_domain_name" {
  value "${element(concat(aws_s3_bucket.el.*.bucket_domain_name, list("")), 0)}"
}
#---encryption with prefix and logging
output "epl_id" {
  value = "${element(concat(aws_s3_bucket.elp.*.id, list("")), 0)}"
}
output "epl_arn" {
  value = "${element(concat(aws_s3_bucket.elp.*.arn, list("")), 0)}"
}
output "epl_region" {
  value = "${element(concat(aws_s3_bucket.elp.*.region, list("")), 0)}"
}
output "epl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.elp.*.hosted_zone_id, list("")), 0)}"
}
output "epl_website_domain" {
  value = "${element(concat(aws_s3_bucket.elp.*.website_domain, list("")), 0)}"
}
output "epl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.elp.*.website_endpoint, list("")), 0)}"
}
output "epl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.elp.*.bucket_domain_name, list("")), 0)}"
}


#---cors
output "c_id" {
  value = "${element(concat(aws_s3_bucket.c.*.id, list("")), 0)}"
}
output "c_arn" {
  value = "${element(concat(aws_s3_bucket.c.*.arn, list("")), 0)}"
}
output "c_region" {
  value = "${element(concat(aws_s3_bucket.c.*.region, list("")), 0)}"
}
output "c_website_domain" {
  value = "${element(concat(aws_s3_bucket.c.*.website_domain, list("")), 0)}"
}
output "c_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.c.*.hosted_zone_id, list("")), 0)}"
}
output "c_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.c.*.website_endpoint, list("")), 0)}"
}
output "c_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.c.*.bucket_domain_name, list("")), 0)}"
}
#---cors with prefix
output "cp_id" {
  value = "${element(concat(aws_s3_bucket.cp.*.id, list("")), 0)}"
}
output "cp_arn" {
  value = "${element(concat(aws_s3_bucket.cp.*.arn, list("")), 0)}"
}
output "cp_region" {
  value = "${element(concat(aws_s3_bucket.cp.*.region, list("")), 0)}"
}
output "cp_website_domain" {
  value = "${element(concat(aws_s3_bucket.cp.*.website_domain, list("")), 0)}"
}
output "cp_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.cp.*.hosted_zone_id, list("")), 0)}"
}
output "cp_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.cp.*.website_endpoint, list("")), 0)}"
}
output "cp_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.cp.*.bucket_domain_name, list("")), 0)}"
}
#---cors with logging
output "cl_id" {
  value = "${element(concat(aws_s3_bucket.cl.*.id, list("")), 0)}"
}
output "cl_arn" {
  value = "${element(concat(aws_s3_bucket.cl.*.arn, list("")), 0)}"
}
output "cl_region" {
  value = "${element(concat(aws_s3_bucket.cl.*.region, list("")), 0)}"
}
output "cl_website_domain" {
  value = "${element(concat(aws_s3_bucket.cl.*.website_domain, list("")), 0)}"
}
output "cl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.cl.*.hosted_zone_id, list("")), 0)}"
}
output "cl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.cl.*.website_endpoint, list("")), 0)}"
}
output "cl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.cl.*.bucket_domain_name, list("")), 0)}"
}
#---cors with prefix and logging
output "cpl_id" {
  value = "${element(concat(aws_s3_bucket.cpl.*.id, list("")), 0)}"
}
output "cpl_arn" {
  value = "${element(concat(aws_s3_bucket.cpl.*.arn, list("")), 0)}"
}
output "cpl_region" {
  value = "${element(concat(aws_s3_bucket.cpl.*.region, list("")), 0)}"
}
output "cpl_website_domain" {
  value = "${element(concat(aws_s3_bucket.cpl.*.website_domain, list("")), 0)}"
}
output "cpl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.cpl.*.hosted_zone_id, list("")), 0)}"
}
output "cpl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.cpl.*.website_endpoint, list("")), 0)}"
}
output "cpl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.cpl.*.bucket_domain_name, list("")), 0)}"
}


#---replication
output "r_id" {
  value = "${element(concat(aws_s3_bucket.r.*.id, list("")), 0)}"
}
output "r_arn" {
  value = "${element(concat(aws_s3_bucket.r.*.arn, list("")), 0)}"
}
output "r_region" {
  value = "${element(concat(aws_s3_bucket.r.*.region, list("")), 0)}"
}
output "r_website_domain" {
  value = "${element(concat(aws_s3_bucket.r.*.website_domain, list("")), 0)}"
}
output "r_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.r.*.hosted_zone_id, list("")), 0)}"
}
output "r_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.r.*.website_endpoint, list("")), 0)}"
}
output "r_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.r.*.bucket_domain_name, list("")), 0)}"
}
#---replication with prefix
output "rp_id" {
  value = "${element(concat(aws_s3_bucket.rp.*.id, list("")), 0)}"
}
output "rp_arn" {
  value = "${element(concat(aws_s3_bucket.rp.*.arn, list("")), 0)}"
}
output "rp_region" {
  value = "${element(concat(aws_s3_bucket.rp.*.region, list("")), 0)}"
}
output "rp_website_domain" {
  value = "${element(concat(aws_s3_bucket.rp.*.website_domain, list("")), 0)}"
}
output "rp_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.rp.*.hosted_zone_id, list("")), 0)}"
}
output "rp_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.rp.*.website_endpoint, list("")), 0)}"
}
output "rp_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.rp.*.bucket_domain_name, list("")), 0)}"
}
#---replication with logging
output "rl_id" {
  value = "${element(concat(aws_s3_bucket.rl.*.id, list("")), 0)}"
}
output "rl_arn" {
  value = "${element(concat(aws_s3_bucket.rl.*.arn, list("")), 0)}"
}
output "rl_region" {
  value = "${element(concat(aws_s3_bucket.rl.*.region, list("")), 0)}"
}
output "rl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.rl.*.hosted_zone_id, list("")), 0)}"
}
output "rl_website_domain" {
  value = "${element(concat(aws_s3_bucket.rl.*.website_domain, list("")), 0)}"
}
output "rl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.rl.*.website_endpoint, list("")), 0)}"
}
output "rl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.rl.*.bucket_domain_name, list("")), 0)}"
}
#---replication with prefix and logging
output "rpl_id" {
  value = "${element(concat(aws_s3_bucket.rpl.*.id, list("")), 0)}"
}
output "rpl_arn" {
  value = "${element(concat(aws_s3_bucket.rpl.*.arn, list("")), 0)}"
}
output "rpl_region" {
  value = "${element(concat(aws_s3_bucket.rpl.*.region, list("")), 0)}"
}
output "rpl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.rpl.*.hosted_zone_id, list("")), 0)}"
}
output "rpl_website_domain" {
  value = "${element(concat(aws_s3_bucket.rpl.*.website_domain, list("")), 0)}"
}
output "rpl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.rpl.*.website_endpoint, list("")), 0)}"
}
output "rpl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.rpl.*.bucket_domain_name, list("")), 0)}"
}


#---hosting
output "h_id" {
  value = "${element(concat(aws_s3_bucket.h.*.id, list("")), 0)}"
}
output "h_arn" {
  value = "${element(concat(aws_s3_bucket.h.*.arn, list("")), 0)}"
}
output "h_region" {
  value = "${element(concat(aws_s3_bucket.h.*.region, list("")), 0)}"
}
output "h_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.h.*.hosted_zone_id, list("")), 0)}"
}
output "h_website_domain" {
  value = "${element(concat(aws_s3_bucket.h.*.website_domain, list("")), 0)}"
}
output "h_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.h.*.website_endpoint, list("")), 0)}"
}
output "h_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.h.*.bucket_domain_name, list("")), 0)}"
}
#---hosting with prefix
output "hp_id" {
  value = "${element(concat(aws_s3_bucket.hp.*.id, list("")), 0)}"
}
output "hp_arn" {
  value = "${element(concat(aws_s3_bucket.hp.*.arn, list("")), 0)}"
}
output "hp_region" {
  value = "${element(concat(aws_s3_bucket.hp.*.region, list("")), 0)}"
}
output "hp_website_domain" {
  value = "${element(concat(aws_s3_bucket.hp.*.website_domain, list("")), 0)}"
}
output "hp_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.hp.*.hosted_zone_id, list("")), 0)}"
}
output "hp_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.hp.*.website_endpoint, list("")), 0)}"
}
output "hp_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.hp.*.bucket_domain_name, list("")), 0)}"
}
#---hosting logging
output "hl_id" {
  value = "${element(concat(aws_s3_bucket.hl.*.id, list("")), 0)}"
}
output "hl_arn" {
  value = "${element(concat(aws_s3_bucket.hl.*.arn, list("")), 0)}"
}
output "hl_region" {
  value = "${element(concat(aws_s3_bucket.hl.*.region, list("")), 0)}"
}
output "hl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.hl.*.hosted_zone_id, list("")), 0)}"
}
output "hl_website_domain" {
  value = "${element(concat(aws_s3_bucket.hl.*.website_domain, list("")), 0)}"
}
output "hl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.hl.*.website_endpoint, list("")), 0)}"
}
output "hl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.hl.*.bucket_domain_name, list("")), 0)}"
}
#---hosting, prefix with logging
output "hpl_id" {
  value = "${element(concat(aws_s3_bucket.hpl.*.id, list("")), 0)}"
}
output "hpl_arn" {
  value = "${element(concat(aws_s3_bucket.hpl.*.arn, list("")), 0)}"
}
output "hpl_region" {
  value = "${element(concat(aws_s3_bucket.hpl.*.region, list("")), 0)}"
}
output "hpl_website_domain" {
  value = "${element(concat(aws_s3_bucket.hpl.*.website_domain, list("")), 0)}"
}
output "hpl_hosted_zone_id" {
  value = "${element(concat(aws_s3_bucket.hpl.*.hosted_zone_id, list("")), 0)}"
}
output "hpl_website_endpoint" {
  value = "${element(concat(aws_s3_bucket.hpl.*.website_endpoint, list("")), 0)}"
}
output "hpl_bucket_domain_name" {
  value = "${element(concat(aws_s3_bucket.hpl.*.bucket_domain_name, list("")), 0)}"
}
