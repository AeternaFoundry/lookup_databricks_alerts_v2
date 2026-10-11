data "databricks_alerts_v2" "alerts_v2_lookup" {
  for_each = var.alerts_v2_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

