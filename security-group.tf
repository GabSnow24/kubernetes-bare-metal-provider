resource "aws_security_group" "acesso-ssh" {
  name = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.cdirs_acesso_remoto
  }

  tags = {
    "Name" = "ssh"
  }
}


resource "aws_security_group" "acesso-http" {
  name = "acesso-http"
  description = "acesso-http"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = var.cdirs_acesso-http
  }

  tags = {
    "Name" = "ssh"
  }
}