# PING
- $ ansible web -m ping -i inventario

# PlayBook
- $ ansible-playbook --syntax-check playbook-web_server.yaml
- $ ansible-playbook -C playbook-web_server.yaml
- $ ansible-playbook playbook-web_server.yaml --step

# Galaxy
- $ ansible-galaxy install --force ansistrano.deploy ansistrano.rollback
- $ ansible-playbook --syntax-check playbook-deploy.yaml
- $ ansible-playbook -e 'ansible_python_interpreter=python3' playbook-deploy.yaml

# RollBack
- $ ansible-playbook -e 'ansible_python_interpreter=python3' playbook-rollback.yaml