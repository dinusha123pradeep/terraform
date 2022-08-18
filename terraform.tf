// Terraform block is use to define required providers and versions
// Also this is the place define what is the minimun terraform version need to run for this configuration
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }

  // Terraform version definition
  required_version = ">= 1.1"
}