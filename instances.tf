resource "aws_instance" "worker-node-0" {
  ami = var.amis["us-east-1"]
  instance_type = "t3.micro"
  key_name = var.key_name
  tags = { 
    Name = "worker-node-0"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}", "sg-0bffebf0eeb2fd4b0", "${aws_security_group.acesso-http.id}", "sg-05dd0a32503c590cc"]
}

resource "aws_instance" "worker-node-1" {
  ami = var.amis["us-east-1"]
  instance_type = "t3.micro"
  key_name = var.key_name
  tags = { 
    Name = "worker-node-1"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}", "sg-0bffebf0eeb2fd4b0", "${aws_security_group.acesso-http.id}", "sg-05dd0a32503c590cc"]
}


resource "aws_instance" "master-node" {
  ami = var.amis["us-east-1"]
  instance_type = "t3.micro"
  key_name = var.key_name
  tags = { 
    Name = "master-node"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}", "sg-0bffebf0eeb2fd4b0", "${aws_security_group.acesso-http.id}", "sg-05dd0a32503c590cc"]
}

