terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "local_file" "hello_world_file" {
  filename = var.hello_world_filename
  content = "class HelloWorld {\n\tpublic static void main(String[] args) {\n\t\tSystem.out.println(\"Hello, World\");\n\t}\n}"
}
