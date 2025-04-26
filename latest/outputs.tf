output "public_ip"{
    value = [for ip in module.ec2_create : ip.public_ip]
}
