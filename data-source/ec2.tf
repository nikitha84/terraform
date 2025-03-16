resource "aws_instance" "web" {
    
    ami = data.ami_id.centos8.id
    instance_type = t2.micro
    # vpc_security_group_ids = [aws_security_group.web.id]

    tags = {
        Name = "data-source"
    }
  
}