provider "aws" {
    region="ap-south-1"
}

resource "aws_vpc" "awsvpc" {
    cidr_block= "108.0.0.0/16"
    tags={
        Name="VPC"
    }  
}

