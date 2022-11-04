resource "local_file" "pet"{
    filename=var.filename[count.index]
    content="sample text"
    count=length(var.filename)
}