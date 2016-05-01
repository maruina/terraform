resource "digitalocean_droplet" "tavore" {
  image    = "debian-7-0-x64"
  name     = "tavore"
  region   = "lon1"
  size     = "512mb"
  backups  = true
  ssh_keys = ["${digitalocean_ssh_key.tavore_root_key.fingerprint}"]
}

resource "digitalocean_droplet" "oberin" {
  image    = "ubuntu-14-04-x64"
  name     = "oberin"
  region   = "fra1"
  size     = "512mb"
  backups  = true
  ssh_keys = ["${digitalocean_ssh_key.oberin_root_key.fingerprint}"]
}
