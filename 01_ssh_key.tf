# Exportamos nuestra key SSH
# https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/ssh_key

resource "digitalocean_ssh_key" "ssh2" {
  name       = "ssh2"
  public_key = file("./SSH/id_rsa.pub")
}