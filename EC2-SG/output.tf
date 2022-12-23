output "ec2-ami" {
  value = aws_instance.web.ami
}
output "ec2-tag_name" {
  value = aws_instance.web.tags

}
output "SG_name" {
  value = aws_security_group.Sahil-SG.name
}
output "SG_tags" {
  value = aws_security_group.Sahil-SG.tags

}