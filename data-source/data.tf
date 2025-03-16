data "aws_ami" "centos8" {
    owners           = ["973714476881"]
    most_recent      = true

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

/* #in aws data will change dynamically.if ami id change entaire created code will change.using data source query the data dynamically from previous.as well as query existing information. */
  
