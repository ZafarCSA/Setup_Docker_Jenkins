#Create S3 bucket 
#for Jenkins artifacts
resource "aws_s3_bucket" "jenkins-artifacts" {
  bucket = "jenkins-artifacts-12345abc"
  tags = {
    Name = "jenkins_artifacts"
  }
}

#Make S3 bucket private
resource "aws_s3_bucket_acl" "private_bucket" {
  bucket = aws_s3_bucket.jenkins-artifacts.id
  acl    = "private"
}