provider "aws"{
    region = "us-east-2"
}
resource "aws_iam_user" "user" {
    name="aws-divya1"
    tags={
        Description = "iam user created through terraform"
    }
}
resource "aws_iam_policy_attachment" "aws-divya1-ec2-fullaccess"{
    name= "ec2fullaccess-policy-attachment"
    users = [aws_iam_user.user.name]
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
