# Defining VM Volume
resource "libvirt_volume" "ubuntu20-qcow2" {
  name = "ubuntu20.qcow2"
  pool = "default"
  source = var.ubuntu_20_img_url
  format = "qcow2"
}

data "template_file" "user_data" {
  template = file("config/cloud_init.yml")
}

data "template_file" "network_config" {
  template = file("config/network_config.yml")
}

resource "libvirt_cloudinit_disk" "commoninit" {
  name           = "commoninit.iso"
  user_data      = data.template_file.user_data.rendered
  network_config = data.template_file.network_config.rendered
  pool           = "default"
}

resource "libvirt_domain" "domain-ubuntu" {
  name   = var.vm_hostname
  memory = "1024"
  vcpu   = 1

  cloudinit = libvirt_cloudinit_disk.commoninit.id

  network_interface {
    network_name   = "default"
    wait_for_lease = true
    hostname       = var.vm_hostname
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

 disk {
    volume_id = "${libvirt_volume.ubuntu20-qcow2.id}"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}

