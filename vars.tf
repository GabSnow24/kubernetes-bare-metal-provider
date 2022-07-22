variable "amis" {
  type = map
  default = {
      "us-east-1"= "ami-03ededff12e34e59e"
      "us-east-2"= "ami-0c7478fd229861c57"
  }
}

variable "eips" {
  type = map
  default = {
      "node_0"= "#yourmasterhosthere"
      "node_1"= "#yourworkerhosthere"
      "master"= "#yourworkerhosthere"
  }
}

variable "cdirs_acesso_remoto" {
  type = list
  default = ["#youriphost/32" ]
}

variable "cdirs_acesso-http" {
  type = list
  default = ["0.0.0.0/0" ]
}

variable "key_name" {
  default = "terraform-aws"
}
