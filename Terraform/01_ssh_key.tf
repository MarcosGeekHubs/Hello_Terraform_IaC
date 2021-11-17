# Exportamos nuestra key SSH
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/ssh_key

resource "digitalocean_ssh_key" "ssh_amrc" {
  name       = "ssh_amrc"
  public_key = file("./SSH/id_rsa.pub")
}