resource "aws_instance" "web" {
    ami = data.ami_id.centos8.id
    instance_type = var.instance_type
    # vpc_security_group_ids = [aws_security_group.web.id]

    tags = var.tags
  
}


