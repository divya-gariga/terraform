resource "aws_instance" "manualinstance" {
    ami = "ami-097a2df4ac947655f"
    instance_type = "t2.micro"
    tags = {
      "Name" = "manualinstance"
    }
    tags_all = {
      "Name" = "manualinstance"
    }
}