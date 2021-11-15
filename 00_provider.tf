# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
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
  token = var.Token
  #ERROR token = "XXXXXXXXXXXX"
}

