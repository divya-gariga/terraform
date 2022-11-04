module "my_instance2"{
    source = "../my_modules/instance"
    ami="ami-097a2df4ac947655f"
    instance_type="t2.small"
    instance_name = "ohio_instance_div"
}