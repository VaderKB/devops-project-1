resource "aws_instance" "vm" {
  count = 2
  ami = var.ami_name
  instance_type = var.instance_type_list[count.index]
  tags = {
    Name= var.ec2_names[count.index]
  }
  key_name = var.key_pair_name
  vpc_security_group_ids = [var.security_group_id_list[count.index]]
}

output "myEc2Ip1" {
  value = aws_instance.vm[0].public_ip
}

output "myEc2Ipé" {
  value = aws_instance.vm[1].public_ip
}