### Droplets ###
resource "digitalocean_ssh_key" "tavore_root_key" {
    name = "Tavore root key"
    public_key = "${file("~/.ssh/tavore_root.pub")}"
}

resource "digitalocean_droplet" "tavore" {
    image = "ubuntu-14-04-x64"
    name = "web-1"
    region = "lon1"
    size = "512mb"
    backups = true
    ssh_keys = ["${digitalocean_ssh_key.tavore_root_key.fingerprint}"]
}
