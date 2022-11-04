provider "aws"{
    region = "us-east-2"
}
terraform{
    backend "s3"{
        bucket = "pets-2022"
        key = "remote_state/terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "state-locking-div"
    }
}