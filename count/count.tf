resource "aws_instance" "web" {
    count = 3
    ami = var.ami_id
    instance_type = var.instance_type
    # vpc_security_group_ids = [aws_security_group.web.id]

    tags = {
        Name = "web"
    }
  
}