resource "aws_s3_bucket" "comfortment-static" {
  bucket = "comfortment-static"
  acl    = "public-read"
  region = "ap-northeast-2"
}