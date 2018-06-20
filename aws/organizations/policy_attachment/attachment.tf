resource "aws_organizations_policy_attachment" "opa" {
  count     = "${length(var.target_id)}"

  policy_id = "${var.policy_id}"
  target_id = "${element(var.target_id, count.index)}"
}

# One to many relationship.
# To do: many to many relationship, also.
