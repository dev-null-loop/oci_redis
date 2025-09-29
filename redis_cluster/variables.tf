variable "cluster_mode" {
  description = "(Optional) Specifies whether the cluster is sharded or non-sharded."
  type        = string
  default     = "NONSHARDED"
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the compartment that contains the cluster."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  type        = map(string)
  default     = {}
}

variable "node_count" {
  description = "(Required) (Updatable) The number of nodes per shard in the cluster when clusterMode is SHARDED. This is the total number of nodes when clusterMode is NONSHARDED."
  type        = number
}

variable "node_memory_in_gbs" {
  description = "(Required) (Updatable) The amount of memory allocated to the cluster's nodes, in gigabytes."
  type        = number
  validation {
    condition     = !(var.node_memory_in_gbs < 2)
    error_message = "nodeMemoryInGBs must be greater than or equal to 2"
  }
}

variable "nsg_ids" {
  description = "(Optional) (Updatable) A list of Network Security Group (NSG) [OCIDs](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) associated with this cluster. For more information, see [Using an NSG for Clusters](https://docs.cloud.oracle.com/iaas/Content/ocicache/connecttocluster.htm#connecttocluster__networksecuritygroup)."
  type        = list(string)
  default     = []
}

variable "shard_count" {
  description = "(Optional) (Updatable) The number of shards in sharded cluster. Only applicable when clusterMode is SHARDED."
  type        = number
  default     = 1
}

variable "software_version" {
  description = "(Required) The Oracle Cloud Infrastructure Cache engine version that the cluster is running."
  type        = string
  validation {
    condition     = contains(["V7_0_5", "REDIS_7_0"], var.software_version)
    error_message = "Supported values are: V7_0_5,REDIS_7_0"
  }
}

variable "oci_cache_config_set_id" {
  description = "(Optional) (Updatable) The ID of the corresponding Oracle Cloud Infrastructure Cache Config Set for the cluster."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the cluster's subnet."
  type        = string
}
