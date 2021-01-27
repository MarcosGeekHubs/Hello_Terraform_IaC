# Now initializa Terraform para tú proyecto . 
# Lee la configuración y instala los plugins que necesita del provider
terraform-init:
	terraform init
terraform-plan:
	terraform plan -var "do_token=${DO_PAT}" 
terraform-apply:
	terraform apply -var "do_token=${DO_PAT}" -auto-approve
terraform-show:
	terraform show terraform.tfstate
terraform-destroy:
	terraform plan -destroy -out=terraform.tfplan -var "do_token=${DO_PAT}" && terraform apply terraform.tfplan
erase:
	sudo rm -rf .terraform .terraform.lock.hcl terraform.tfplan terraform.tfstate terraform.tfstate.backup 
print_DO_PAT:
	printenv DO_PAT