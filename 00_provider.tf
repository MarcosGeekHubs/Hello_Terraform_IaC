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
  token = "a0443d0865ccc11f24a96fef2c227b8d7f0bc2add5f059fcb9dde1686280e09b"
  #ERROR token = "XXXXXXXXXXXX"
}

