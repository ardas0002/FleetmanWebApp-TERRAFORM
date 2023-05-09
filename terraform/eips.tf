resource "aws_eip" "nat1_eip" {
    depends_on = [aws_internet_gateway.main]
}

resource "aws_eip" "nat2_eip" {
    depends_on = [aws_internet_gateway.main]
}