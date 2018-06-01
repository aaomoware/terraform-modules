variable name                  { default = "" }
variable key_id                { default = "" }
variable operations            { default = [] type = "list" }
variable retire_on_delete      { default = false }
variable grantee_principal     { default = "" }
variable retiree_principal     { default = "" }
variable grant_creation_tokens { default = [] type = "list" }

variable encryption_context_equals { default = {} type = "map" }
variable encryption_context_subset { default = {} type = "map" }
