output "amiID" {
  value = data.aws_ami.latest_amazon_linux_ami_id.id
}

# output "publicipofec2"{
#     value = aws_instance.ec2_os1[0].public_ip
# }

output "iam_access_key_id"{
  value = module.iam_user.iam_access_key_id
}