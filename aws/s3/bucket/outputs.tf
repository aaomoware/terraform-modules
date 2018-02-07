#---basic
output "b_id" {
  value = "${aws_s3_bucket.b.id}"
}
output "b_arn" {
  value = "${aws_s3_bucket.b.arn}"
}
output "b_region" {
  value = "${aws_s3_bucket.b.region}"
}
output "b_hosted_zone_id" {
  value = "${aws_s3_bucket.b.hosted_zone_od}"
}
output "b_website_domain" {
  value = "${aws_s3_bucket.b.website_domain}"
}
output "b_website_endpoint" {
  value = "${aws_s3_bucket.b.website_endpoint}"
}
output "b_bucket_domain_name" {
  value = "${aws_s3_bucket.b.bucket_domain_name}"
}
#---basic with prefix
output "bp_id" {
  value = "${aws_s3_bucket.bp.id}"
}
output "bp_arn" {
  value = "${aws_s3_bucket.bp.arn}"
}
output "bp_region" {
  value = "${aws_s3_bucket.bp.region}"
}
output "bp_hosted_zone_id" {
  value = "${aws_s3_bucket.bp.hosted_zone_od}"
}
output "bp_website_domain" {
  value = "${aws_s3_bucket.bp.website_domain}"
}
output "bp_website_endpoint" {
  value = "${aws_s3_bucket.bp.website_endpoint}"
}
output "bp_bucket_domain_name" {
  value = "${aws_s3_bucket.bp.bucket_domain_name}"
}
#---basic with logging
output "bl_id" {
  value = "${aws_s3_bucket.bl.id}"
}
output "bl_arn" {
  value = "${aws_s3_bucket.bl.arn}"
}
output "bp_region" {
  value = "${aws_s3_bucket.bl.region}"
}
output "bl_hosted_zone_id" {
  value = "${aws_s3_bucket.bl.hosted_zone_id}"
}
output "bl_website_domain" {
  value = "${aws_s3_bucket.bl.website_domain}"
}
output "bl_website_endpoint" {
  value = "${aws_s3_bucket.bl.website_endpoint}"
}
output "bl_bucket_domain_name" {
  value = "${aws_s3_bucket.bl.bucket_domain_name}"
}
#---basic prefix with logging
output "bpl_id" {
  value = "${aws_s3_bucket.bpl.id}"
}
output "bpl_arn" {
  value = "${aws_s3_bucket.bpl.arn}"
}
output "bpl_region" {
  value = "${aws_s3_bucket.bpl.region}"
}
output "bpl_hosted_zone_id" {
  value = "${aws_s3_bucket.bpl.hosted_zone_id}"
}
output "bpl_website_domain" {
  value = "${aws_s3_bucket.bpl.website_domain}"
}
output "bpl_website_endpoint" {
  value = "${aws_s3_bucket.bpl.website_endpoint}"
}
output "bpl_bucket_domain_name" {
  value = "${aws_s3_bucket.bpl.bucket_domain_name}"
}

#---encryption
output "e_id" {
  value = "${aws_s3_bucket.e.id}"
}
output "e_arn" {
  value = "${aws_s3_bucket.e.arn}"
}
output "e_region" {
  value = "${aws_s3_bucket.e.region}"
}
output "e_bucket_domain_name" {
  value = "${aws_s3_bucket.e.domain_name}"
}
output "e_hosted_zone_id" {
  value = "${aws_s3_bucket.e.hosted_zone_id}"
}
output "e_website_domain" {
  value = "${aws_s3_bucket.e.website_domain}"
}
output "e_website_endpoint" {
  value = "${aws_s3_bucket.e.website_endpoint}"
}
#---encryption with prefix
output "ep_id" {
  value = "${aws_s3_bucket.ep.id}"
}
output "ep_arn" {
  value = "${aws_s3_bucket.ep.arn}"
}
output "ep_region" {
  value = "${aws_s3_bucket.ep.region}"
}
output "ep_website_domain" {
  value = "${aws_s3_bucket.ep.website_domain}"
}
output "ep_hosted_zone_id" {
  value = "${aws_s3_bucket.ep.hosted_zone_id}"
}
output "ep_website_endpoint" {
  value = "${aws_s3_bucket.ep.website_endpoint}"
}
output "ep_bucket_domain_name" {
  value = "${aws_s3_bucket.ep.bucket_domain_name}"
}
#---encryption with logging
output "el_id" {
  value "${aws_s3_bucket.el.id}"
}
output "el_arn" {
  value "${aws_s3_bucket.el.arn}"
}
output "el_region" {
  value "${aws_s3_bucket.el.region}"
}
output "el_website_domain" {
  value "${aws_s3_bucket.el.website_domain}"
}
output "el_hosted_zone_id" {
  value "${aws_s3_bucket.el.hosted_zone_id}"
}
output "el_website_endpoint" {
  value "${aws_s3_bucket.el.website_endpoint}"
}
output "el_bucket_domain_name" {
  value "${aws_s3_bucket.el.bucket_domain_name}"
}
#---encryption with prefix and logging
output "epl_id" {
  value = "${aws_s3_bucket.elp.id}"
}
output "epl_arn" {
  value = "${aws_s3_bucket.elp.arn}"
}
output "epl_region" {
  value = "${aws_s3_bucket.elp.region}"
}
output "epl_hosted_zone_id" {
  value = "${aws_s3_bucket.elp.hosted_zone_id}"
}
output "epl_website_domain" {
  value = "${aws_s3_bucket.elp.website_domain}"
}
output "epl_website_endpoint" {
  value = "${aws_s3_bucket.elp.website_endpoint}"
}
output "epl_bucket_domain_name" {
  value = "${aws_s3_bucket.elp.bucket_domain_name}"
}


#---cors
output "c_id" {
  value = "${aws_s3_bucket.c.id}"
}
output "c_arn" {
  value = "${aws_s3_bucket.c.arn}"
}
output "c_region" {
  value = "${aws_s3_bucket.c.region}"
}
output "c_website_domain" {
  value = "${aws_s3_bucket.c.website_domain}"
}
output "c_hosted_zone_id" {
  value = "${aws_s3_bucket.c.hosted_zone_id}"
}
output "c_website_endpoint" {
  value = "${aws_s3_bucket.c.website_endpoint}"
}
output "c_bucket_domain_name" {
  value = "${aws_s3_bucket.c.bucket_domain_name}"
}
#---cors with prefix
output "cp_id" {
  value = "${aws_s3_bucket.cp.id}"
}
output "cp_arn" {
  value = "${aws_s3_bucket.cp.arn}"
}
output "cp_region" {
  value = "${aws_s3_bucket.cp.region}"
}
output "cp_website_domain" {
  value = "${aws_s3_bucket.cp.website_domain}"
}
output "cp_hosted_zone_id" {
  value = "${aws_s3_bucket.cp.hosted_zone_id}"
}
output "cp_website_endpoint" {
  value = "${aws_s3_bucket.cp.website_endpoint}"
}
output "cp_bucket_domain_name" {
  value = "${aws_s3_bucket.cp.bucket_domain_name}"
}
#---cors with logging
output "cl_id" {
  value = "${aws_s3_bucket.cl.id}"
}
output "cl_arn" {
  value = "${aws_s3_bucket.cl.arn}"
}
output "cl_region" {
  value = "${aws_s3_bucket.cl.region}"
}
output "cl_website_domain" {
  value = "${aws_s3_bucket.cl.website_domain}"
}
output "cl_hosted_zone_id" {
  value = "${aws_s3_bucket.cl.hosted_zone_id}"
}
output "cl_website_endpoint" {
  value = "${aws_s3_bucket.cl.website_endpoint}"
}
output "cl_bucket_domain_name" {
  value = "${aws_s3_bucket.cl.bucket_domain_name}"
}
#---cors with prefix and logging
output "cpl_id" {
  value = "${aws_s3_bucket.cpl.id}"
}
output "cpl_arn" {
  value = "${aws_s3_bucket.cpl.arn}"
}
output "cpl_region" {
  value = "${aws_s3_bucket.cpl.region}"
}
output "cpl_website_domain" {
  value = "${aws_s3_bucket.cpl.website_domain}"
}
output "cpl_hosted_zone_id" {
  value = "${aws_s3_bucket.cpl.hosted_zone_id}"
}
output "cpl_website_endpoint" {
  value = "${aws_s3_bucket.cpl.website_endpoint}"
}
output "cpl_bucket_domain_name" {
  value = "${aws_s3_bucket.cpl.bucket_domain_name}"
}


#---replication
output "r_id" {
  value = "${aws_s3_bucket.r.id}"
}
output "r_arn" {
  value = "${aws_s3_bucket.r.arn}"
}
output "r_region" {
  value = "${aws_s3_bucket.r.region}"
}
output "r_website_domain" {
  value = "${aws_s3_bucket.r.website_domain}"
}
output "r_hosted_zone_id" {
  value = "${aws_s3_bucket.r.hosted_zone_id}"
}
output "r_website_endpoint" {
  value = "${aws_s3_bucket.r.website_endpoint}"
}
output "r_bucket_domain_name" {
  value = "${aws_s3_bucket.r.bucket_domain_name}"
}
#---replication with prefix
output "rp_id" {
  value = "${aws_s3_bucket.rp.id}"
}
output "rp_arn" {
  value = "${aws_s3_bucket.rp.arn}"
}
output "rp_region" {
  value = "${aws_s3_bucket.rp.region}"
}
output "rp_website_domain" {
  value = "${aws_s3_bucket.rp.website_domain}"
}
output "rp_hosted_zone_id" {
  value = "${aws_s3_bucket.rp.hosted_zone_id}"
}
output "rp_website_endpoint" {
  value = "${aws_s3_bucket.rp.website_endpoint}"
}
output "rp_bucket_domain_name" {
  value = "${aws_s3_bucket.rp.bucket_domain_name}"
}
#---replication with logging
output "rl_id" {
  value = "${aws_s3_bucket.rl.id}"
}
output "rl_arn" {
  value = "${aws_s3_bucket.rl.arn}"
}
output "rl_region" {
  value = "${aws_s3_bucket.rl.region}"
}
output "rl_hosted_zone_id" {
  value = "${aws_s3_bucket.rl.hosted_zone_id}"
}
output "rl_website_domain" {
  value = "${aws_s3_bucket.rl.website_domain}"
}
output "rl_website_endpoint" {
  value = "${aws_s3_bucket.rl.website_endpoint}"
}
output "rl_bucket_domain_name" {
  value = "${aws_s3_bucket.rl.bucket_domain_name}"
}
#---replication with prefix and logging
output "rpl_id" {
  value = "${aws_s3_bucket.rpl.id}"
}
output "rpl_arn" {
  value = "${aws_s3_bucket.rpl.arn}"
}
output "rpl_region" {
  value = "${aws_s3_bucket.rpl.region}"
}
output "rpl_hosted_zone_id" {
  value = "${aws_s3_bucket.rpl.hosted_zone_id}"
}
output "rpl_website_domain" {
  value = "${aws_s3_bucket.rpl.website_domain}"
}
output "rpl_website_endpoint" {
  value = "${aws_s3_bucket.rpl.website_endpoint}"
}
output "rpl_bucket_domain_name" {
  value = "${aws_s3_bucket.rpl.bucket_domain_name}"
}


#---hosting
output "h_id" {
  value = "${aws_s3_bucket.h.id}"
}
output "h_arn" {
  value = "${aws_s3_bucket.h.arn}"
}
output "h_region" {
  value = "${aws_s3_bucket.h.region}"
}
output "h_hosted_zone_id" {
  value = "${aws_s3_bucket.h.hosted_zone_id}"
}
output "h_website_domain" {
  value = "${aws_s3_bucket.h.website_domain}"
}
output "h_website_endpoint" {
  value = "${aws_s3_bucket.h.website_endpoint}"
}
output "h_bucket_domain_name" {
  value = "${aws_s3_bucket.h.bucket_domain_name}"
}
#---hosting with prefix
output "hp_id" {
  value = "${aws_s3_bucket.hp.id}"
}
output "hp_arn" {
  value = "${aws_s3_bucket.hp.arn}"
}
output "hp_region" {
  value = "${aws_s3_bucket.hp.region}"
}
output "hp_website_domain" {
  value = "${aws_s3_bucket.hp.website_domain}"
}
output "hp_hosted_zone_id" {
  value = "${aws_s3_bucket.hp.hosted_zone_id}"
}
output "hp_website_endpoint" {
  value = "${aws_s3_bucket.hp.website_endpoint}"
}
output "hp_bucket_domain_name" {
  value = "${aws_s3_bucket.hp.bucket_domain_name}"
}
#---hosting logging
output "hl_id" {
  value = "${aws_s3_bucket.hl.id}"
}
output "hl_arn" {
  value = "${aws_s3_bucket.hl.arn}"
}
output "hl_region" {
  value = "${aws_s3_bucket.hl.region}"
}
output "hl_hosted_zone_id" {
  value = "${aws_s3_bucket.hl.hosted_zone_id}"
}
output "hl_website_domain" {
  value = "${aws_s3_bucket.hl.website_domain}"
}
output "hl_website_endpoint" {
  value = "${aws_s3_bucket.hl.website_endpoint}"
}
output "hl_bucket_domain_name" {
  value = "${aws_s3_bucket.hl.bucket_domain_name}"
}
#---hosting, prefix with logging
output "hpl_id" {
  value = "${aws_s3_bucket.hpl.id}"
}
output "hpl_arn" {
  value = "${aws_s3_bucket.hpl.arn}"
}
output "hpl_region" {
  value = "${aws_s3_bucket.hpl.region}"
}
output "hpl_website_domain" {
  value = "${aws_s3_bucket.hpl.website_domain}"
}
output "hpl_hosted_zone_id" {
  value = "${aws_s3_bucket.hpl.hosted_zone_id}"
}
output "hpl_website_endpoint" {
  value = "${aws_s3_bucket.hpl.website_endpoint}"
}
output "hpl_bucket_domain_name" {
  value = "${aws_s3_bucket.hpl.bucket_domain_name}"
}
