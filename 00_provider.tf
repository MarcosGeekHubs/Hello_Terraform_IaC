# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs

variable "do_token" {}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.6.0"
    }
  }
}


# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
  #ERROR token = "XXXXXXXXXXXX"
}

