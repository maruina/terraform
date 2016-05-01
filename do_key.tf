resource "digitalocean_ssh_key" "tavore_root_key" {
  name       = "Tavore root key"
  public_key = "${file("~/.ssh/tavore_root.pub")}"
}

resource "digitalocean_ssh_key" "oberin_root_key" {
  name       = "Oberin root key"
  public_key = "${file("~/.ssh/oberin.pub")}"
}
