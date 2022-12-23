module "ec2" {
  source        = "../EC2-SG"
  for_each      = var.ec2-SG
  ami           = each.value["ami"]
  instance_type = each.value["instance-type"]
  tag_name      = each.value["tag-name"]
  tag_owner     = each.value["tag-owner"]
  tag_purpose   = each.value["tag-purpose"]
  name          = each.value["name"]
  description   = each.value["description"]
  vpc_id        = each.value["vpc-id"]
}

module "s3" {
  source      = "../S3-bucket"
  for_each    = var.s3
  bucket_name = each.value["bucket-name"]
  tag_name    = each.value["tag-name"]
  tag_owner   = each.value["tag-owner"]
  tag_purpose = each.value["tag-purpose"]
}
