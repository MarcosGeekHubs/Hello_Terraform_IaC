# Creamos un dominio nuevo
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain

resource "digitalocean_domain" "marcware" {
  name = var.web_domain
  ip_address = digitalocean_loadbalancer.www-lb.ip
}

output "domain_output" {
  value = digitalocean_domain.marcware
}


resource "digitalocean_domain" "web1_marcware" {
  name = var.web1
  ip_address = digitalocean_droplet.web-1.ipv4_address
}

resource "digitalocean_domain" "web2_marcware" {
  name = var.web2
  ip_address = digitalocean_droplet.web-2.ipv4_address
}
