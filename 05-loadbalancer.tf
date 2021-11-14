resource "digitalocean_loadbalancer" "www-lb" {
  name   = "www-lb"
  region = "nyc1"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = [digitalocean_droplet.web-2.id, digitalocean_droplet.web-1.id]
}