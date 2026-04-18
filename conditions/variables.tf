variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "anil-instance"
        purpose = "conditions-demo"
    }
}
variable "from_port" {
    type = number
    default = 0
}
variable "to_port" {
    type = number
    default = 0
}
variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
variable "sg_name" {
    type = string
    default = "allow-all"
}
variable "desc" {
    type = string
    default = "allowing all traffic"
}
variable "sg_tags" {
    type = map(string)
    default = {
        Name = "allow-all"
        environment = "conditions"
    }
}
variable "environment" {
    type = string
    default = "prod"
}
