terraform {
  backend "s3" {
    bucket = "hphan-terraform"
    key = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
