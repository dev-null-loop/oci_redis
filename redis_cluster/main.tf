resource "oci_redis_redis_cluster" "this" {
  compartment_id     = var.compartment_id
  display_name       = var.display_name
  node_count         = var.node_count
  node_memory_in_gbs = var.node_memory_in_gbs
  software_version   = var.software_version
  subnet_id          = var.subnet_id
  backup_id          = var.backup_id
  cluster_mode       = var.cluster_mode
  defined_tags       = var.defined_tags
  freeform_tags      = var.freeform_tags
  dynamic "import_from_object_storage_details" {
    for_each = var.import_from_object_storage_details[*]
    iterator = ifos
    content {
      bucket    = ifos.value.bucket
      namespace = ifos.value.namespace
      dynamic "objects" {
	for_each = ifos.value.objects
	iterator = ob
	content {
	  object = ob.value.object
	}
      }
    }
  }
  nsg_ids                 = var.nsg_ids
  oci_cache_config_set_id = var.oci_cache_config_set_id
  security_attributes     = var.security_attributes
  shard_count             = var.shard_count
  provisioner "local-exec" {
    when        = destroy
    interpreter = ["/bin/bash", "-c"]
    command = templatefile("${path.module}/redis-security-list-delete.tftpl", {
      subnet_id      = self.subnet_id
      compartment_id = self.compartment_id
    })
  }
}
