variable name_prefix          {}
variable key_name             {}
variable image_id             {}
variable user_data            {}
variable instance_type        {}
variable security_groups      { type = "list" }
variable user_data_base64     { default = "" }
variable iam_instance_profile {}
variable associate_public_ip_address { default = false }
