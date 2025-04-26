resource "aws_instance" "rohit"{
    instance_type = var.instance_type
    ami = var.ami_id
    key_name = "rohit"

    tags = {
        Name = var.instance_name
    }
}
