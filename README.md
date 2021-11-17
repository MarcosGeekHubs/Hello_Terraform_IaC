# Hello_Terraform_IaC
## TERRAFORM

Introducción a la infraestructura como código con terraforn en Digital Ocean 

### Instrucciones para ejecutar el proyecto

- Obtener una SSH para acceder al servidor:
- Renombrar el nombre de:
    - _variables.tf.example a _variables.tf
- "web_domain" --> tiene que ser igual al dominio de la web
- Token de DO
    - 	export DO_PAT= XXX

- dig marcware.es


## ANSIBLE
### PING
- $ ansible web -m ping -i inventario

### PlayBook
- $ ansible-playbook --syntax-check playbook-web_server.yaml
- $ ansible-playbook -C playbook-web_server.yaml
- $ ansible-playbook playbook-web_server.yaml --step

### Galaxy
- $ ansible-galaxy install --force ansistrano.deploy ansistrano.rollback
- $ ansible-playbook --syntax-check playbook-deploy.yaml
- $ ansible-playbook -e 'ansible_python_interpreter=python3' playbook-deploy.yaml

### RollBack
- $ ansible-playbook -e 'ansible_python_interpreter=python3' playbook-rollback.yaml