resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_bucket_name
 }

resource "aws_s3_bucket_versioning" "s3-version" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}