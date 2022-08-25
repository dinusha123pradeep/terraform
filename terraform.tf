# Terraform block is use to define required providers and versions
# Also this is the place define what is the minimun terraform version need to run for this configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  # Terraform version definition
  required_version = ">= 1.2.0"
}