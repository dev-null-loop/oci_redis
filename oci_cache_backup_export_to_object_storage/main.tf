resource "oci_redis_oci_cache_backup_export_to_object_storage" "this" {
  bucket              = var.bucket
  namespace           = var.namespace
  oci_cache_backup_id = var.oci_cache_backup_id
  prefix              = var.prefix
}
