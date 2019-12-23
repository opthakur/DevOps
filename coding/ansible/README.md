# Ansible

ad-hoc command: ansible web1 -i inventory -m command -a "sudo yum install -y httpd"

To run a playbook: ansible-playbook -i inventory mysql.yml

Welcome to host {{ansible_hostname}}!

- name: Create motd

  template: src="motd.j2" dest="/etc/motd"
