variable "ami" {
  type          = string
  default       = "ami-097a2df4ac947655f"
}

variable "instance_type" {
  type          = string
  default       = "t2.nano"
}

variable "instance_name" {
  description   = "ohio ubuntu t2.nano instance"
  type          = string
  default       = "ohio_instance_div"
}