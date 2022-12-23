resource "aws_instance" "web" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.Sahil-SG.name]
  tags = {
    Name    = var.tag_name
    Owner   = var.tag_owner
    Purpose = var.tag_purpose
  }
}
resource "aws_security_group" "Sahil-SG" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = [80, 22, 443]
    iterator = port
    content {
      from_port        = port.value
      to_port          = port.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }
  dynamic "egress" {
    for_each = [80, 22, 443]
    iterator = port
    content {
      from_port        = port.value
      to_port          = port.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }
  #Tags Value coming from variables.tf (Module Folder)
  tags = {
    Owner   = var.tag_owner
    purpose = var.tag_purpose
  }
}