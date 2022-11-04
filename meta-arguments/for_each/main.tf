resource "local_file" "pet"{
    filename=each.value
    content="sample text"
    for_each=toset(var.filename)
}