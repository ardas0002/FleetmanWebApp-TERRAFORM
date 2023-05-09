resource "aws_nat_gateway" "gw1" {
    allocation_id = aws_eip.nat1_eip.id

    subnet_id = aws_subnet.public_1.id

    tags = {
      Name = "NAT 1"  
    }
}

resource "aws_nat_gateway" "gw2" {
    allocation_id = aws_eip.nat2_eip.id

    subnet_id = aws_subnet.public_2.id

    tags = {
      Name = "NAT 2"  
    }
}

