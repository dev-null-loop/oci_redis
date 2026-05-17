resource "oci_redis_redis_cluster_create_identity_token" "this" {
  public_key       = var.public_key
  redis_cluster_id = var.redis_cluster_id
  redis_user       = var.redis_user
  defined_tags     = var.defined_tags
  freeform_tags    = var.freeform_tags
}
