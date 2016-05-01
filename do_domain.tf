resource "digitalocean_domain" "moranth_com" {
  name       = "moranth.com"
  ip_address = "127.0.0.1"
}

resource "digitalocean_domain" "matteoruina_com" {
  name       = "matteoruina.com"
  ip_address = "${digitalocean_droplet.tavore.ipv4_address}"
}
