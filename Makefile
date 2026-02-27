TERRAFORM_DIR = ./terraform
TERRAFORM = terraform -chdir=$(TERRAFORM_DIR)

PLAN_FILE = tfplan

terraform-init:
	$(TERRAFORM) init
	
terraform-fmt:
	$(TERRAFORM) fmt -recursive

terraform-validate:
	$(TERRAFORM) validate

terraform-plan: terraform-init
	$(TERRAFORM) plan -out=$(PLAN_FILE)

terraform-apply:
	$(TERRAFORM) apply $(PLAN_FILE)

terraform-destroy:
	$(TERRAFORM) destroy


terraform-routine: terraform-plan terraform-apply

.PHONY: terraform-init terraform-fmt terraform-validate terraform-plan terraform-apply terraform-destroy terraform-routine

