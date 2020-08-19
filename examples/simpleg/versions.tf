terraform {
  required_version = ">=0.12.6, <0.14"
  required_providers {
    gsuite = {
      source  = "deviavir/gsuite"
      version = "~>0.1"
    }
  }
}
