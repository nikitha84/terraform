resource "aws_instance" "web" {
    for_each = var.instance_names
    ami = var.ami_id
    instance_type = each.value
    # vpc_security_group_ids = [aws_security_group.web.id]

    tags = {
        Name = each.key
    }
  
}