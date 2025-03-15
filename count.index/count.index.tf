resource "aws_instance" "web" {
    count = 3    #every instance have same name
    ami = var.ami_id
    instance_type = var.instance_type
    # vpc_security_group_ids = [aws_security_group.web.id]

    tags = {
        Name = var.instance_name[count.index]
    }
  
}