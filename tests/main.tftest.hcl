run "test1" {
  assert {
    condition = output.value == true
    error_message = "exptected value to be true"
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