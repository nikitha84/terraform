# 1.command line
# 2.-var.file
# 3.terraform.terraform
# 4.env variables


variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "hello terraform"
        project = "roboshop"
        Env = "dev"
        Terraform = "True" #ec2 infra created by terraform
        component = "web"
    }
}

variable "sg_name" {
    type = string
    default = "web"
}

variable "sg_description" {
    type = string
    default = "allow_all"
}

variable "inbound_from_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]

}


 