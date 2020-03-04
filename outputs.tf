output "sql_server_id" {
  description = "Output sql server id."
  depends_on  = [azurerm_sql_server.sql_server]
  value       = azurerm_sql_server.sql_server.id
}

# output "sql_database_id" {
#   description = "Output sql database id."
#   depends_on  = [azurerm_sql_database.sql_database]
#   value       = azurerm_sql_database.sql_database.id
# }
