variable sub_count     { default = "0" }
variable subnet_id     { default = [] type = "list" }
variable allocation_id { default = [] type = "list" }


# sub_count is here till the below restiction is rectified by terraform
# https://github.com/hashicorp/terraform/issues/10857#issuecomment-368059147
