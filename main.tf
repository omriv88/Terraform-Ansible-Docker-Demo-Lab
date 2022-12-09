provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "wordpress1" {
    ami = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"
    key_name = "wordpress"
    vpc_security_group_ids = [ "sg-02bd12ea337b24edb" ]

    tags = {
        Name = "wordpress1"
    }
}
