// Terraform block is use to define required providers and versions
// Also this is the place define what is the minimun terraform version need to run for this configuration
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0.0"
    }
  }

  // Terraform version definition
  required_version = ">= 1.1"
}