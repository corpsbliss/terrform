provider "aws" {
    region = "us-east-1"
}

data "aws_ssm_parameter" aws_instanceubuntu_22_04_ami {
  name = "/aws/service/canonical/ubuntu/server/22.04/stable/current/amd64/hvm/ebs-gp2/ami-id"
}

resource "aws_instance" rohit2 {
    key_name = var.key_name
    instance_type = var.instance_type
    ami = data.aws_ssm_parameter.ubuntu_22_04_ami.value
}

output "ip_address"{
    value = aws_instance.rohit1.public_ip
}
