module "consul" {
  source   = "github.com/wardviaene/terraform-consul-module.git?ref=terraform-0.12"
  key_name = var.PEM_KEY
  key_path = var.PEM_KEY_PATH
  region   = var.AWS_REGION
  vpc_id   = aws_default_vpc.default.id
  subnets = {
    "0" = aws_default_subnet.default_az1.id
    "1" = aws_default_subnet.default_az2.id
    "2" = aws_default_subnet.default_az3.id
  }
}

output "consul-output" {
  value = module.consul.server_address
}
