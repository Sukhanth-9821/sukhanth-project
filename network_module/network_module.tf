variable "vpc_id"{}

resource "aws_subnet""awssbnet_1"{
    cidr_block="108.0.1.0/24"
    vpc_id="${var.vpc_id}"
    tags={
        Name="${terraform.workspace}_Subnet_1"
    }
}

resource "aws_subnet""awssbnet_2"{
    cidr_block="108.0.1.0/24"
    vpc_id="${var.vpc_id}"
    tags={
        Name="${terraform.workspace}_Subnet_2"
    }
}