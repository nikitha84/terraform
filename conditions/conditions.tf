resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_name == "web" ? "t2.micro" : "t3.small"
    # vpc_security_group_ids = [aws_security_group.web.id]

    tags = var.tags
  
}