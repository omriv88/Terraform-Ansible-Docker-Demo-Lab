provider "aws" {
    region = "us-east-1"
    profile = var.profile
}


resource "aws_instance" "wordpress" {
    ami = "ami-02b972fec07f1e659"
    instance_type = "t2.micro"
    key_name = "wordpress"
    vpc_security_group_ids = [ "sg-02bd12ea337b24edb" ]

    tags = {
        Name = var.name
        group = var.group
    }
}
