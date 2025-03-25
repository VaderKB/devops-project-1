resource "aws_vpc_security_group_ingress_rule" "sec_grp_1_rules" {
  security_group_id = aws_security_group.sg_grp[0].id
  cidr_ipv4         = "0.0.0.0/0"
  count             = 4
  from_port         = var.ports_sec_grp1[count.index]
  ip_protocol       = "tcp"
  to_port           = var.ports_sec_grp1[count.index]
}


resource "aws_vpc_security_group_ingress_rule" "sec_grp_2_rules" {
  security_group_id = aws_security_group.sg_grp[1].id
  cidr_ipv4         = "0.0.0.0/0"
  count             = 2
  from_port         = var.ports_sec_grp2[count.index]
  ip_protocol       = "tcp"
  to_port           = var.ports_sec_grp2[count.index]
}