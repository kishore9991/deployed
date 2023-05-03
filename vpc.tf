resource "aws_vpc""myvpc-1" {
    cidr_block ="${var.vpc_cidr}"
    instance_tenancy = "default"
    tags ={
        Name ="myvpc-1"
    } 

}

    

