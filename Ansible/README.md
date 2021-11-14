# PING
- $ ansible web -m ping -i inventario

# PlayBook
- $ ansible-playbook --syntax-check playbook-web_server.yaml 
- $ ansible-playbook -c playbook-web_server.yaml 
- $ ansible-playbook playbook-web_server.yaml --step


# Galaxy
- $ ansible-galaxy install ansistrano.deploy ansistrano.rollback
- $ ansible-galaxy deploy.yaml -i hosts