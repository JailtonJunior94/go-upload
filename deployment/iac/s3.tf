resource "aws_s3_bucket" "goexpert_s3" {
  bucket = "goexpert-bucket-example"
  tags = {
    Name        = "Go Expert - Fullcycle"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "goexpert_s3_acl" {
  bucket = aws_s3_bucket.goexpert_s3.id
  acl    = "private"
}
