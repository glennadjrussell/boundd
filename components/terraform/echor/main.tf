resource "null_resource" "example_echo" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }
}

