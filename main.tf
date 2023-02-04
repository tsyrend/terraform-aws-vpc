# Create a VPC
resource "aws_vpc" "example" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

}

resource "aws_subnet" "public_subnet1" {
  depends_on = [ # Explicit dependency
    aws_vpc.example

  ]

  vpc_id     = aws_vpc.example.id # Implicit dependency
  cidr_block = "10.0.1.0/24"

}


# resource "aws_--> provider
# resource _vpc ----> type resource
# resource  "example" ------>  name resource