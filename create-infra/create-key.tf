# RSA key of size 4096 bits
resource "tls_private_key" "rsa-4096-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "my-ec2-pair" {
    key_name = local.key_name
    public_key = tls_private_key.rsa-4096-key.public_key_openssh
  
}

resource "local_file" "key_pair" {
  content = tls_private_key.rsa-4096-key.private_key_openssh
  filename = "${path.module}/${var.private_key_name}"
}
