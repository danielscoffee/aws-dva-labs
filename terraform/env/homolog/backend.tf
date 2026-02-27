data "terraform_remote_state" "homolog_backend" {
   backend = "s3"
   config {
       bucket = "terraform-state-prod"
       key = "network/terraform.tfstate"
       region = "us-east-1"
   }
 } // TODO: FIX IT AND STUDY HOW TO DO Terraform S3 better
