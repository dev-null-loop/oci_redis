resource "oci_redis_redis_cluster" "this" {
  compartment_id          = var.compartment_id
  display_name            = var.display_name
  node_count              = var.node_count
  node_memory_in_gbs      = var.node_memory_in_gbs
  software_version        = var.software_version
  subnet_id               = var.subnet_id
  cluster_mode            = var.cluster_mode
  defined_tags            = var.defined_tags
  freeform_tags           = var.freeform_tags
  nsg_ids                 = var.nsg_ids
  oci_cache_config_set_id = var.oci_cache_config_set_id
  shard_count             = var.shard_count
}
