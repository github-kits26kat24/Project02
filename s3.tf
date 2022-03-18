Terraform state will be stored in S3
resource "aws_s3_bucket" "project02" {
  bucket = "Project02"

   tags = {
    Name       = var.Name
    Bucket-Environment = var.Bucket-Environment
    Bucket-Department = var.Bucket-Department
  }
}

