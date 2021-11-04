terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 2.1.2, < 3.1.0"
      #version = "= 2.1.2"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 2.1.2, < 3.1.0"
      #version = "= 2.1.2"
    }
  }

  required_version = "= 1.0.10"
}

resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

resource "null_resource" "randompet" {
  provisioner "local-exec" {
    command = "echo ${random_pet.petname.id}"
  }
}
