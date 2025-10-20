# Terraform Null Resource Example

This directory contains a complete example of using Terraform null resources with testing.

## Overview

This example demonstrates:
- Basic null resource usage with local-exec provisioners
- Null resource triggers and dependencies
- File creation and cleanup using null resources
- Comprehensive testing with Terraform's built-in test framework

## Files

- `main.tf` - Main Terraform configuration with null resources
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `main.tftest.hcl` - Terraform test file
- `README.md` - This documentation

## Null Resources Included

### 1. `null_resource.example`
A basic null resource that:
- Uses timestamp trigger to run on every apply
- Executes a local command during creation
- Executes a cleanup command during destruction

### 2. `null_resource.file_creator`
A file management null resource that:
- Creates a file with custom content
- Triggers when file content changes
- Removes the file during destruction

### 3. `null_resource.dependency_example`
Demonstrates resource dependencies:
- Depends on the example null resource
- Shows how to chain null resources

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
| file_content | Content to write to the generated file | string | "Hello World from Terraform!" |
| environment | Environment name | string | "development" |

## Outputs

| Name | Description |
|------|-------------|
| example_id | ID of the example null resource |
| file_creator_id | ID of the file creator null resource |
| dependency_example_id | ID of the dependency example null resource |
| generated_file_path | Path to the generated file |

## Testing

The test file `main.tftest.hcl` includes:
- Validation tests for resource creation
- Custom variable testing
- File generation verification
- Trigger mechanism testing

Run tests with:
```bash
terraform test
```

## Requirements

- Terraform >= 1.0
- null provider ~> 3.2

## Notes

- The `generated_file.txt` file will be created in this directory during apply
- Null resources are useful for running arbitrary commands or scripts
- They can be used to integrate with external systems or perform custom logic
- The test framework validates both planning and application of resources