resource "aws_vpc" "equalexperts" {
  cidr_block  = "${var.vpc-cidr}"


  tags = {
    Name = "equalexperts"
  }
}

resource "aws_subnet" "terra_ingress_subnet_az_1" {
  vpc_id     = "${aws_vpc.equalexperts.id}"
  cidr_block        = "172.20.10.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "Ingress Subnet 1"
  }

  depends_on = [
    "aws_vpc.equalexperts"
  ]
}

resource "aws_subnet" "terra_private_subnet_az_1" {
  vpc_id     = "${aws_vpc.equalexperts.id}"
 cidr_block        = "172.20.20.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Application Subnet 1"
  }

  depends_on = [
    "aws_vpc.equalexperts"
  ]
}

resource "aws_internet_gateway" "terra_gw" {
  vpc_id = "${aws_vpc.equalexperts.id}"

  depends_on = [
    "aws_vpc.equalexperts"
  ]
}

resource "aws_eip" "nat_1" {
  vpc = true

}

resource "aws_nat_gateway" "gw_1" {
  allocation_id = "${aws_eip.nat_1.id}"
  subnet_id     = "${aws_subnet.terra_ingress_subnet_az_1.id}"

  tags = {
    Name = "gw NAT 1"
  }
}