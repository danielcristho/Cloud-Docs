.PHONY: run-playbook run-tofu all

init:
	sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl gnupg -y

install-kvm:
	sudo apt install qemu-kvm libvirt-daemon-system virtinst libvirt-clients bridge-utils -y
	sudo systemctl enable libvirtd
	sudo systemctl start libvirtd
	sudo usermod -aG kvm $USER
	sudo usermod -aG libvirt $USER

install-tofu:
	sudo install -m 0755 -d /etc/apt/keyrings
	curl -fsSL https://get.opentofu.org/opentofu.gpg | sudo tee /etc/apt/keyrings/opentofu.gpg >/dev/null
	curl -fsSL https://packages.opentofu.org/opentofu/tofu/gpgkey | sudo gpg --no-tty --batch --dearmor -o /etc/apt/keyrings/opentofu-repo.gpg >/dev/null
	sudo chmod a+r /etc/apt/keyrings/opentofu.gpg /etc/apt/keyrings/opentofu-repo.gpg
	echo \
  	"deb [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main
	deb-src [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main" | \
  	sudo tee /etc/apt/sources.list.d/opentofu.list > /dev/null
	sudo chmod a+r /etc/apt/sources.list.d/opentofu.list
	sudo apt-get update
	sudo apt-get install -y tofu

run-playbook:
	cd ansible-apache-phpmyadmin && ansible-playbook -i hosts playbook.yml

run-tofu:
	cd opentofu-libvirt-kvm && tofu init

all:
	@echo "Running Ansible playbook and Tofu init concurrently..."
	$(MAKE) run-playbook & $(MAKE) run-tofu &
	wait