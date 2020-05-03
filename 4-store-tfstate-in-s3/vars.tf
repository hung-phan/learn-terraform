variable "AWS_REGION" {
  default = "ap-southeast-1"
}

variable "AMIS" {
  type = map(string)

  default = {
    ap-southeast-1 = "ami-0b8cf0f359b1335e1"
  }
}
