terraform {
  backend "s3" {
    bucket = "devops-works"
    key    = "terraform_state"
    region = "us-east-1"
  }
}