.PHONY:

tofu-run:
	cd opentofu-libvirt-kvm && \
	tofu init && \
	tofu plan > plan.out && \
	tofu apply && \
	virsh list --all

tofu-destroy:
	cd opentofu-libvirt-kvm && tofu destroy

ansible-run:
	cd ansible-apache-phpmyadmin && ansible-playbook -i hosts playbook.yml

all:
	tofu-run