# Creamos el droplet
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet

resource "digitalocean_droplet" "web-1" {
  image      = "ubuntu-18-04-x64"
  name       = "web-1"
  region     = "nyc1"
  size       = "s-1vcpu-1gb"
 // user_data  = file("userdata.yaml")
  ssh_keys   = [digitalocean_ssh_key.ssh_amrc.fingerprint]
  monitoring = true
}
