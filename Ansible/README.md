# PING
- $ ansible web -m ping -i inventario

# PlayBook
- $ ansible-playbook --syntax-check playbook-web_server.yaml 
- $ ansible-playbook -c playbook-web_server.yaml 
- $ ansible-playbook playbook-web_server.yaml --step


# Galaxy
- $ ansible-galaxy install --force ansistrano.deploy ansistrano.rollback
- $ ansible-playbook --syntax-check playbook-deploy.yaml
- $ ansible-galaxy playbook-deploy.yaml -i hosts
- $ ansible-playbook -i 159.223.185.78, -u root -e 'ansible_python_interpreter=python3' playbook-deploy.yaml