variable "AWS_REGION" {
  default = "ap-southeast-1"
}

variable "DEFAULT_SECURITY_GROUP" {}

variable "AMIS" {
  type = map(string)

  default = {
    ap-southeast-1 = "ami-0b8cf0f359b1335e1"
  }
}

variable "PEM_KEY" {
  default = "hung-phan-zendesk-dev"
}

variable "PEM_KEY_PATH" {
  default = "~/.ssh/hung-phan-zendesk-dev.pem"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
