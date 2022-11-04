resource "aws_instance" "ohio_instance" {
	ami = var.ami
	instance_type = var.instance_type
	tags = {
		Name = var.instance_name	
	}
}