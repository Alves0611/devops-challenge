locals {
  namespaced_service_name = "${var.service_name}"

  subnets = {
    "pub_a" = {
      cidr_block = "172.16.0.0/23"
      az         = "a"
      name       = "public-a"
    }
    "pub_b" = {
      cidr_block = "172.16.2.0/23"
      az         = "b"
      name       = "public-b"
    }
    "pvt_a" = {
      cidr_block = "172.16.6.0/23"
      az         = "a"
      name       = "private-a"
    }
    "pvt_b" = {
      cidr_block = "172.16.8.0/23"
      az         = "b"
      name       = "private-b"
    }
  }
  subnet_ids = {
    for k, v in aws_subnet.this : v.tags.Name => v.id
  }
  public_subnet_ids   = [aws_subnet.this["pub_a"].id, aws_subnet.this["pub_b"].id]
  internet_cidr_block = "0.0.0.0/0"
}