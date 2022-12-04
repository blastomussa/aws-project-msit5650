resource "aws_s3_bucket" "bucket" {
  bucket = "hugo-site-bucket"
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "public-read-write"
}