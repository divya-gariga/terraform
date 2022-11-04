resource "aws_instance" "ec2testserver" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  user_data = <<EOF
              #!/bin/bash
              sudo apt update
              sudo apt install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF
  provisioner "local-exec" {
    on_failure = continue
    command = "echo Instance ${aws_instance.ec2testserver.public_ip} created! > public_ip.txt"
  }

  }


output publicip {
  value = aws_instance.ec2testserver.public_ip
}