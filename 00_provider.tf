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
  token = "3dd85690643c850f7460f5d6ec87ea5c4afe6e14d9b5e1a036fed1069b558745"
  #ERROR token = "XXXXXXXXXXXX"
}

