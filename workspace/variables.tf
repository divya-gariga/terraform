variable "instance_type"{
  default="t2.micro"
}
variable ami{
    type = map
    default={
        "ProjectA"="ami-097a2df4ac947655f",
        "ProjectB"="ami-089a545a9ed9893b6"
    }
}