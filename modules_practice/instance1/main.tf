module "my_instance1"{
    source = "../my_modules/instance"
    ami="ami-08c40ec9ead489470"
    instance_type="t2.micro"
    instance_name = "virginia_instance_div"
}
