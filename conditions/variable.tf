variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}


variable "instance_name" {
    type = string
    default = "web"
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