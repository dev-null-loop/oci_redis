resource "oci_redis_oci_cache_backup" "this" {
  compartment_id                   = var.compartment_id
  display_name                     = var.display_name
  source_cluster_id                = var.source_cluster_id
  backup_source                    = var.backup_source
  defined_tags                     = var.defined_tags
  description                      = var.description
  freeform_tags                    = var.freeform_tags
  retention_period_in_days         = var.retention_period_in_days
  export_to_object_storage_trigger = var.export_to_object_storage_trigger
}
