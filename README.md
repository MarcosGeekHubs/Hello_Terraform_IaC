# Hello_Terraform_IaC
## TERRAFORM

Introducción a la infraestructura como código con terraforn en Digital Ocean 


### DNS
Cómo apuntar a servidores de nombres de DigitalOcean desde registradores de dominio comunes [Tutorial](https://www.digitalocean.com/community/tutorials/how-to-point-to-digitalocean-nameservers-from-common-domain-registrars ). 

 
### Instrucciones para ejecutar el proyecto

- Obtener una SSH para acceder al servidor:
    - $ ssh-keygen
- Crear el fichero:
    - _variables.tf
- "web_domain" --> tiene que ser igual al dominio de la web
- Token de DO
    - 	export DO_PAT= XXX

- dig marcware.es

### Problema con el Acceso SSH
- $ sudo ssh-keygen -f "/home/marcware/.ssh/known_hosts" -R "web1.marcware.es"
- $ sudo ssh-keygen -f "/home/marcware/.ssh/known_hosts" -R "web2.marcware.es"

- $ ssh -i SSH/id_rsa.pub root@web1.marcware.es
- $ ssh -i SSH/id_rsa.pub root@web2.marcware.es

### Comando
- $ terraform init
- $ terraform validate
- $ terraform plan
- $ terraform apply




## ANSIBLE

Crear la carpeta para el contenido de Ansible.
### Configuración básica
```
$ ansible --version
```

Crear el fichero **ansible.cfg** para las configuraciones de este proyecto.

Volver a ejecutar
```
$ ansible --version
```


### PING
Crear Inventario:

Crear un fichero llamado **inventario**

```
$ ansible web1 -m ping -i inventario
$ ansible web2 -m ping -i inventario
$ ansible all_web -m ping
```

### PlayBook
Crear el fichero de aprovisionamiento  **playbook-web_server.yaml** 
```
$ ansible-playbook --syntax-check playbook-web_server.yaml
$ ansible-playbook -C playbook-web_server.yaml
$ ansible-playbook -C playbook-web_server.yaml --step
$ ansible-playbook playbook-web_server.yaml --step
```

### Galaxy
```
- $ ansible-galaxy install --force ansistrano.deploy ansistrano.rollback
- $ ansible-playbook --syntax-check playbook-deploy.yaml
- $ ansible-playbook -e 'ansible_python_interpreter=python3' playbook-deploy.yaml
```

### RollBack
```
- $ ansible-playbook -e 'ansible_python_interpreter=python3' playbook-rollback.yaml
```