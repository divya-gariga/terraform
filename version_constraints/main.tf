terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.0"
    }
  }
}
resource "local_file" "pet"{
    filename = "pets.txt"
    content="version constraints"
}
