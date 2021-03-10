#
# Creamos el droplet

resource "digitalocean_droplet" "web-2" {
  image     = "ubuntu-18-04-x64"
  name      = "web-2"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = file("userdata_docker-compose.yaml")
  ssh_keys  = [digitalocean_ssh_key.ssh_amrc.fingerprint]
  monitoring = true
}
