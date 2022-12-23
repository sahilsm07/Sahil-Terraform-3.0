ec2-SG = {
  "1" = {
    ami           = "ami-0cca134ec43cf708f"
    instance-type = "t2.micro"
    tag-name      = "Sahil Mehta1"
    tag-owner     = "sahil.mehta@cloudeq.com"
    tag-purpose   = "Terraform Traning B6"
    name          = "Sahil-Mehta-SG1"
    description   = "Create security group using TF"
    vpc-id        = "vpc-0db9b000905eaca0e"
  }
  "2" = {
    ami           = "ami-0cca134ec43cf708f"
    instance-type = "t2.micro"
    tag-name      = "Sahil Mehta2"
    tag-owner     = "sahil.mehta@cloudeq.com"
    tag-purpose   = "Terraform Traning B6"
    name          = "Sahil-Mehta-SG2"
    description   = "Create security group using TF"
    vpc-id        = "vpc-0db9b000905eaca0e"
  }
  "3" = {
    ami           = "ami-0cca134ec43cf708f"
    instance-type = "t2.micro"
    tag-name      = "Sahil Mehta3"
    tag-owner     = "sahil.mehta@cloudeq.com"
    tag-purpose   = "Terraform Traning B6"
    name          = "Sahil-Mehta-SG3"
    description   = "Create security group using TF"
    vpc-id        = "vpc-0db9b000905eaca0e"
  }
}
s3 = {
  "1" = {
    bucket-name = "Sahil-S3"
    tag-name    = "Sahil-Mehta1"
    tag-owner   = "sahil.mehta@cloudeq.com"
    tag-purpose = "Terraform Traning B6"
  }
  "2" = {
    bucket-name = "Sahil-S3"
    tag-name    = "Sahil-Mehta2"
    tag-owner   = "sahil.mehta@cloudeq.com"
    tag-purpose = "Terraform Traning B6"
  }
  "3" = {
    bucket-name = "Sahil-S3"
    tag-name    = "Sahil-Mehta3"
    tag-owner   = "sahil.mehta@cloudeq.com"
    tag-purpose = "Terraform Traning B6"
  }


}