terraform {
  required_version = ">= 1.0"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo '${var.message}'"
  }
}

resource "null_resource" "example2" {}
