# Terraform Tutorial - Build Infrastructure

In this tutorial going to learn how to create EC2 instance in AWS. 

## Prerequisites

1. Terraform CLI (1.2.0 +) installed
2. The AWS CLI installed
3. AWS account associated credentials that allow you to create resources

## Terraform Block

`terraform{}` block is use to define the terraform version required to the infrastructure configuration. Terraform will use latest version if not defined the terraform version. In the `required_providers{}` block should define specific provides required to execute the configuration. Generally `source` and `version` should be defined as provides settings.

In this tutorial use terraform version `1.2.0` or higher version to be installed. Also `AWS` provider is required to connect to AWS to manage resources. `hashicorp/aws` version `4.16` or higher minor versions required in the provider block.

## Provider Block

`provider{}` block is for define provider specific settings. When use `AWS` need to tell which region need to use when provision resources

## Resource Block

`resource{}` block is use for define components of the infrastructure. Resource block have two strings before block open. First string is the resource type and second string is the resource name. The resource type is `aws_instance` and the resource name is `app_server`. The resource type is provided by the provider. Together resource type and resource name should be unique id for the resource. As example the ID for your EC2 instance is `aws_instance.app_server`.

Resource blocks contains arguements which can use for configuer the resource. Arguemtns can incle such as machine size, image name, VPC ids.

## Steps to run the configuration
```
1. terraform init
2. terraform plan
3. terraform apply
4. terraform destroy
```
### Initialization

`terraform init` will downloads required provides and save in `.terraform` folder. Terraform also creates a lock file named `.terraform.lock.hcl`which specified the excact versions used.

### Format, Validate and Plan

`terraform fmt` format your configuration according to the terraform standard coding styles.

`terrraform validate` validate the configuration and check any syntax errors.

`terraform plan` will do a dry run of the configuration and provide a preview of the changes going to apply.

### Create Infrastructure

`terraform apply` command use to run the configuration and create resources. Terraform will print out the plan when you run the apply and waiting for the approval to contine apply changes. By typing `yes` can provide the approval to proceed.

### Destroy what you created

You can run `terraform destroy` to terminate all resources created by `terraform apply`. It **dose not** destroy resources running elsewhere that not managed by Terraform project. 

````````
Remember to destroy resources created by the tutorial to prevent security risks and costs.
````````

