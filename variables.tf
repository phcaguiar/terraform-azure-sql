# Common variables

variable "sql_resource_group_name" {
  default = null
}

variable "sql_location" {
  default = null
}

variable "sql_server_name" {
  default = null
}

# SQL server variables

variable "sql_server_version" {
  default = null
}

variable "sql_server_administrator_login" {
  default = null
}

variable "sql_server_administrator_login_password" {
  default = null
}

# SQL database variables

variable "sql_database_name" {
  default = null
}

variable "sql_database_edition" {
  default = null
}

variable "sql_database_collation" {
  default = null
}

variable "sql_database_create_mode" {
  default = null
}

variable "sql_database_requested_service_objective_name" {
  default = null
}

# SQL failover group

variable "sql_failover_group_name" {
  default = null
}

variable "primary_sql_server_name" {
  default = null
}

variable "sql_database_id" {
  default = null
}

variable "secondary_sql_server_id" {
  default = null
}

variable "sql_failover_group_mode" {
  default = null
}

variable "sql_failover_group_grace_minutes" {
  default = null
}
