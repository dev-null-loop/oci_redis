terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 7.7.0"
    }
  }
  required_version = ">= 1.5.7"
}
