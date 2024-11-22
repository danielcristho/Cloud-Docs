variable "libvirt_disk_path" {
  description = "path for libvirt pool"
  default     = "default"
}

variable "ubuntu_20_img_url" {
  description = "ubuntu 20.04 image"
  default     = "https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64.img"
}

variable "vm_hostname" {
  description = "vm hostname"
  default     = "mesin1"
}

variable "ssh_username" {
  description = "the ssh user to use"
  default     = "ubuntu"
}

variable "ssh_private_key" {
  description = "the private key to use"
  default     = "~/.ssh/id_rsa"
}

