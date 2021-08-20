resource "aws_vpc" "awsvpc" {
    cidr_block= "108.0.0.0/16"
    tags={
        Name="VPC"
    }  
}

output "vpc_id"{
    value="${aws_vpc.awsvpc.id}"
}