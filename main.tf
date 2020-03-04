locals {
  sql_database = { for db in var.sql_database_name : db => db }
}

resource "azurerm_sql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.sql_resource_group_name
  location                     = var.sql_location
  version                      = var.sql_server_version
  administrator_login          = var.sql_server_administrator_login
  administrator_login_password = var.sql_server_administrator_login_password
}

resource "azurerm_sql_database" "sql_database" {
  for_each                         = local.sql_database
  name                             = each.key
  resource_group_name              = var.sql_resource_group_name
  location                         = var.sql_location
  server_name                      = var.sql_server_name
  edition                          = var.sql_database_edition
  collation                        = var.sql_database_collation
  create_mode                      = var.sql_database_create_mode
  requested_service_objective_name = var.sql_database_requested_service_objective_name
  depends_on                       = [azurerm_sql_server.sql_server]
}

# resource "azurerm_sql_failover_group" "sql_failover_group" {
#   name                = var.sql_failover_group_name
#   resource_group_name = var.sql_resource_group_name
#   server_name         = var.primary_sql_server_name
#   databases           = [var.sql_database_id]
#   partner_servers {
#     id = var.secondary_sql_server_id
#   }

#   read_write_endpoint_failover_policy {
#     mode          = var.sql_failover_group_mode
#     grace_minutes = var.sql_failover_group_grace_minutes
#   }
#   depends_on          = [azurerm_sql_database.sql_database]
# }