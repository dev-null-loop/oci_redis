variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the compartment that contains the Oracle Cloud Infrastructure Cache Config Set."
  type        = string
}

variable "configuration_details" {
  description = "(Required) List of Oracle Cloud Infrastructure Cache Config Set Values."
  type = object({
    items = object({
      config_key   = string
      config_value = string
    })
  })
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Description for the custom Oracle Cloud Infrastructure Cache Config Set."
  type        = string
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

variable "software_version" {
  description = "(Required) The Oracle Cloud Infrastructure Cache engine version that the cluster is running."
  type        = string
}
