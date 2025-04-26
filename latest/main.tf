module "ec2_create"{
    source = "./modules/ec2"
    count = length(var.names)
    instance_name = var.names[count.index]

}
