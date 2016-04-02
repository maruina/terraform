### Domains ###
resource "digitalocean_domain" "moranth_com" {
    name = "moranth.com"
    ip_address = "127.0.0.1"
}

resource "digitalocean_domain" "matteoruina_com" {
    name = "matteoruina.com"
    ip_address = "${digitalocean_droplet.tavore.ipv4_address}"
}

### Domain Records ###
resource "digitalocean_record" "tavore" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    type = "A"
    name = "tavore"
    value = "${digitalocean_droplet.tavore.ipv4_address}"
}

resource "digitalocean_record" "gmail1" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    name = "@"
    type = "MX"
    value = "aspmx.l.google.com."
    priority = 1
}

resource "digitalocean_record" "gmail2" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    name = "@"
    type = "MX"
    value = "alt1.aspmx.l.google.com."
    priority = 5
}

resource "digitalocean_record" "gmail3" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    type = "MX"
    name = "@"
    value = "alt2.aspmx.l.google.com."
    priority = 5
}

resource "digitalocean_record" "gmail4" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    type = "MX"
    name = "@"
    value = "alt3.aspmx.l.google.com."
    priority = 10
}

resource "digitalocean_record" "gmail5" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    type = "MX"
    name = "@"
    value = "alt4.aspmx.l.google.com."
    priority = 10
}
