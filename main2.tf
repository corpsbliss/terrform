provider "aws"{
    region = "us-east-1"
}

variable "names" {
  type    = list(string)
  default = ["web", "db", "app"]
}

resource "aws_instance" "rohit" {
    count = 5
    key_name = var.key_name
    ami = var.ami_id
    instance_type = var.instance_type
    
    tags = {
        Name = var.names[count.index]
    }
}
