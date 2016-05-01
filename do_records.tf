resource "digitalocean_record" "tavore" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    type = "A"
    name = "tavore"
    value = "${digitalocean_droplet.tavore.ipv4_address}"
}

resource "digitalocean_record" "oberin" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    type = "A"
    name = "oberin"
    value = "${digitalocean_droplet.oberin.ipv4_address}"
}

resource "digitalocean_record" "www" {
    domain = "${digitalocean_domain.matteoruina_com.name}"
    type = "CNAME"
    name = "www"
    value = "${digitalocean_record.tavore.fqdn}."
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
