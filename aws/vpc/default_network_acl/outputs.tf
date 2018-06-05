output "dna_id"                    { value = "${aws_default_network_acl.dna.id}" }
output "deny_egress_id"            { value = "${element(concat(aws_default_network_acl.deny_egress.*.id,list("")),0}" }
output "deny_ingress_id"           { value = "${element(concat(aws_default_network_acl.deny_ingress.*.id,list("")),0}" }
output "denyalltraffic_id"         { value = "${element(concat(aws_default_network_acl.denyalltraffic.*.id,list("")),0}" }
