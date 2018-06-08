variable names                { default = "aghogho" }
variable engine_name          { default = "sqlserver-ee" }
variable major_engine_version { default = "11.00" }
variable options {
  default = [
    {
      option_name = "TDE"
    }
  ]
  type = "list"
}
variable region  { default = "eu-west-1" }
