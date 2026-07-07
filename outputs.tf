############################################
# VPC Output
############################################
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

############################################
# Subnet Outputs
############################################
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

############################################
# EC2 Output
############################################
output "private_ec2_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.private_ec2.private_ip
}

############################################
# S3 Logging Bucket Output
############################################
output "logs_bucket_name" {
  description = "Name of the S3 logging bucket"
  value       = aws_s3_bucket.logs.bucket
}
