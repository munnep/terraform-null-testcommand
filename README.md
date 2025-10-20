# Terraform Null Resource Example

This directory contains a simple example of using Terraform null resources with testing.

## Overview

This example demonstrates:
- Basic null resource usage with local-exec provisioner
- Simple testing with Terraform's built-in test framework
- Using variables with null resources

## Files

- `main.tf` - Main Terraform configuration with a single null resource
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `main.tftest.hcl` - Terraform test file
- `README.md` - This documentation

## Null Resource

### `null_resource.example`
A simple null resource that:
- Takes a message variable as input
- Executes a local command to echo the message

## Usage

### Initialize Terraform
```bash
terraform init
```

### Plan the deployment
```bash
terraform plan
```

### Apply the configuration
```bash
terraform apply
```

### Run tests
```bash
terraform test
```

### Clean up
```bash
terraform destroy
```

## Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|
| message | Message to display | string | "Hello from Terraform!" |

## Outputs

| Name | Description |
|------|-------------|
| null_resource_id | ID of the null resource |

## Testing

The test file `main.tftest.hcl` includes:
- Test with custom message variable
- Validation that the null resource is created successfully

Run tests with:
```bash
terraform test
```

## Requirements

- Terraform >= 1.0
- null provider ~> 3.2

## Notes

- Null resources are useful for running arbitrary commands or scripts
- They can be used to integrate with external systems or perform custom logic
- This example keeps it simple with just one resource and one test