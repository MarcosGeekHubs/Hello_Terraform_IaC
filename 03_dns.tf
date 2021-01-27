# Creamos un dominio nuevo
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain

resource "digitalocean_domain" "marcware" {
  name = var.web_domain
  ip_address = digitalocean_loadbalancer.www-lb.ip
}

output "domain_output" {
  value = digitalocean_domain.marcware
}