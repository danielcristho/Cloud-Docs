.PHONY: run-playbook run-tofu all

run-playbook:
	cd ansible-apache-phpmyadmin && ansible-playbook -i hosts playbook.yml

run-tofu:
	cd opentofu-libvirt-kvm && tofu init

all:
	@echo "Running Ansible playbook and Tofu init concurrently..."
	$(MAKE) run-playbook & $(MAKE) run-tofu &
	wait