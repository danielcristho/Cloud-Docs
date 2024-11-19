terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  # Configuration options
  uri = "qemu:///system"
}

resource "libvirt_domain" "web_server" {
  name   = "web-server"
  memory = "512"
  vcpu   = 1

  disk {
    volume_id = libvirt_volume.web_server_disk.id
  }

  network_interface {
    network_name = "default"
  }
}

resource "libvirt_domain" "db_server" {
  name   = "db-server"
  memory = "1024"
  vcpu   = 1

  disk {
    volume_id = libvirt_volume.db_server_disk.id
  }

  network_interface {
    network_name = "default"
  }
}