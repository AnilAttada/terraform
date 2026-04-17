variable "ami" {
    type = string
    description = "AMI of Joindevops"
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Anil-instance"
        purpose = "variables-demo"
    }
}

variable "sg_name" {
    type = string
    default = "vars-file-allow-all"
}

variable "sg_desc" {
    type = string
    default = "allowing all traffic"
}

variable "from_port"{
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

variable "sg_tags" {
    type = map(string)
    default = {
        Name = "allow-all"
    }
}