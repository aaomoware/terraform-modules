variable name_prefix          {}
variable base64               { default = true }
variable key_name             {}
variable image_id             {}
variable user_data            { default = "" }
variable instance_type        {}
variable security_groups      { type = "list" }
variable user_data_base64     { default = "" }
variable iam_instance_profile {}
variable associate_public_ip_address { default = false }
