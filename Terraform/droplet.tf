resource "digitalocean_droplet" "web" {
  name     = "${var.droplet_name}"
  region   = "${var.droplet_region}"
  size     = "${var.droplet_size}"
  image    = "${var.droplet_image}"
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]
}

output "Droplet IPv4 Addr" {
  value = "${digitalocean_droplet.web.ipv4_address}"
}