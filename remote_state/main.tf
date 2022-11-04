resource "local_file" "state"{
    filename = "cats.txt"
    content="remote state"
}
resource "aws_s3_bucket" "state_bucket" {
  bucket="pets-2022"
}
resource "aws_s3_bucket_object" "state_bucket_object" {
  key= "remote_state/terraform.tfstate"
  bucket = aws_s3_bucket.state_bucket.id
}
resource "aws_dynamodb_table" "basic-dynamodb-table" {
    hash_key = "LockID"
    name = "state-locking-div"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "LockID"
      type ="S"
    }
}