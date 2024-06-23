resource "null_resource" "foo" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo ${var.foo} - ${timestamp()}"
  }
}

resource "null_resource" "bar" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo ${var.bar} - ${timestamp()}"
  }
}
