output "alerts_v2_lookup_alerts" {
  description = "Map of alerts values across all alerts_v2_lookup, keyed the same as var.alerts_v2_lookup except keys with no alerts are omitted"
  value       = { for k, v in data.databricks_alerts_v2.alerts_v2_lookup : k => v.alerts if v.alerts != null && length(v.alerts) > 0 }
}
output "alerts_v2_lookup_page_size" {
  description = "Map of page_size values across all alerts_v2_lookup, keyed the same as var.alerts_v2_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_alerts_v2.alerts_v2_lookup : k => v.page_size if v.page_size != null }
}
output "alerts_v2_lookup_provider_config" {
  description = "Map of provider_config values across all alerts_v2_lookup, keyed the same as var.alerts_v2_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_alerts_v2.alerts_v2_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

