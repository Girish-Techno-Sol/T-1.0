terraform {
  backend "s3" {
    bucket = "nov2tfbackend"
    key    = "nitierdepolydev"
    region = "ap-south-1"
    dynamodb_table = "nov2tfbackend"
  }
}