resource "local_file" "pet"{
    filename = var.filename
    content=var.content
}

resource "local_file" "type_constraints" {
  filename=var.filename1
  content=var.content1
}

# resource "local_file" "input_filename" {
#   filename=var.input_filename
#   content = var.input_content
# }

resource "local_file" "ex_tuple"{
  filename = "tuple.txt"
  content =var.var_tuple[0]
}

resource "local_file" "ex_list"{
  filename = "list.txt"
  content =var.var_list[1]
}

