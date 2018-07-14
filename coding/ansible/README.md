# Ansible

ad-hoc command: ansible web1 -i inventory -m command -a "sudo yum install -y httpd"

To run a playbook: ansible-playbook -i inventory mysql.yml