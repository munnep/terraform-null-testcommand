# Terraform test file for null resource example
# Run with: terraform test

run "test_null_resource" {
  command = apply

  # variables {
  #   message = "Hello from test!"
  # }

  assert {
    condition     = output.null_resource_id != ""
    error_message = "Null resource ID should not be empty"
  }
}