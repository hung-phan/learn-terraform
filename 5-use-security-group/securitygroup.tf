data "aws_ip_ranges" "default_ip_range" {
  regions  = [var.AWS_REGION]
  services = ["ec2"]
}

resource "aws_security_group" "default_security_group" {
  name = "hphan-security-group-tf"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = data.aws_ip_ranges.default_ip_range.cidr_blocks
  }
  tags = {
    CreateDate = data.aws_ip_ranges.default_ip_range.create_date
    SyncToken  = data.aws_ip_ranges.default_ip_range.sync_token
  }
}

output "default_security_group_id" {
  value = aws_security_group.default_security_group.id
}
