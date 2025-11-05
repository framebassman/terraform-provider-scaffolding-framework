terraform {
  required_providers {
    hashicups = {
      source = "hashicorp.com/edu/hashicups"
    }
  }
}

variable "hashicups_host" {}
variable "hashicups_username" {}
variable "hashicups_password" {}

provider "hashicups" {
  host = "${var.hashicups_host}"
  username = "${var.hashicups_username}"
  password = "${var.hashicups_password}"
}

data "hashicups_coffees" "example" {}
