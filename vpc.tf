resource "aws_vpc" "project02" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "Kay Project02"
  }
}
output "Vpc_id" {
  value = "aws_vpc.project02.id"
}
