provider "aws" {
  region = "${var.region}"
}

terraform {
  required_providers {
    sysdig = {
      source = "sysdiglabs/sysdig"
      version = ">= 0.5.39"
    }
  }
}
