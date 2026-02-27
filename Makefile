TERRAFORM_DIR = ./terraform/.terraform/
TERRAFORM = terraform -chdir=./terraform/

terraform-routine:
ifneq ("$(wildcard $(TERRAFORM_DIR))","")
	@$(TERRAFORM) plan
else
	@$(TERRAFORM) init
	@$(TERRAFORM) plan
endif

	@$(TERRAFORM) apply

.PHONY: terraform-routine
