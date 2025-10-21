# Terraform Test Example

A minimal Terraform configuration demonstrating Terraform's native testing framework with boolean variable testing.

## 📋 What This Module Does

This module demonstrates Terraform testing capabilities with a simple boolean variable/output pattern. It serves as a foundational example for:

- **Terraform Testing**: Core concepts of `.tftest.hcl` files
- **Variable Testing**: How to test different variable inputs
- **Output Validation**: Asserting expected output values
- **Test Organization**: Structuring tests in the `tests/` directory

## 🚀 Quick Start

### 1. Initialize and Test
```bash
# Initialize Terraform
terraform init

# set environment variable
export TF_VAR_value=true

# Run the test suite
terraform test

tests/main.tftest.hcl... in progress
  run "test1"... pass
  run "test2"... pass
tests/main.tftest.hcl... tearing down
tests/main.tftest.hcl... pass

Success! 2 passed, 0 failed.
```

### 2. Understanding the Code

**main.tf**:
```hcl
variable "value" {
  type = bool
}

output "value" {
  value = var.value
}
```

**tests/main.tftest.hcl**:
```hcl
run "test1" {
  assert {
    condition = output.value == true
    error_message = "expected value to be true"
  }
}

run "test2" {
  variables {
    value = !var.value
  }

  assert {
    condition = output.value == false
    error_message = "expected value to be false"
  }
}

variable "value" {
  type = bool
}
```

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
