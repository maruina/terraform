### Droplets ###
resource "digitalocean_ssh_key" "tavore_root_key" {
    name = "Tavore root key"
    public_key = "${file("~/.ssh/tavore_root.pub")}"
}

resource "digitalocean_droplet" "tavore" {
    image = "debian-7-0-x64"
    name = "tavore"
    region = "lon1"
    size = "512mb"
    backups = true
    ssh_keys = ["${digitalocean_ssh_key.tavore_root_key.fingerprint}"]
}
