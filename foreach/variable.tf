variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}


variable "instance_names {
    type = map
    default = {
        web = "t2.micro"
        cart = "t2.micro"
    }
}
