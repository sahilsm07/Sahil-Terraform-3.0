output "s3-output" {
  value = [for i in var.s3 : i["bucket-name"]]
}
output "s3-output-2" {
  value = [for i in var.s3 : i["tag-name"]]
}
output "ec2-output-1" {
  value = [for i in var.ec2-SG : i["ami"]]
}
output "ec2-output-2" {
  value = [for i in var.ec2-SG : i["tag-name"]]
}
output "SG-output-1" {
  value = [for i in var.ec2-SG : i["name"]]
}
output "SG-output-2" {
  value = [for i in var.ec2-SG : i["tag-owner"]]
}