# main.tf
data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

# data "terraform_remote_state" "network" {
#   backend = "s3"
#   config = {
#     bucket = "${var.app_name}-${var.tags.Environment}-tf-remote-state"
#     key    = "infrastructure/network/vpc"
#     region = "us-west-2"
#   }
# }

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_pair
  tags          = var.tags

}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}
