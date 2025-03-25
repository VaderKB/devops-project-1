resource "aws_security_group" "sg_grp" {
  count = 2
  name  = var.security_group_name[count.index]
}

output "aws_security_group_ids" {
  value = aws_security_group.sg_grp[*].id
}