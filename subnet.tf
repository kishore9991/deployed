resource "aws_subnet" "pub-subnet-1" {
    vpc_id = aws_vpc.myvpc-1.id
    cidr_block = "${var.pub-subnet-1}"
    map_public_ip_on_launch = true
    availability_zone = "ap-south-1a"
    tags = {
        Name = "pub-sub-1"
    } 
   } 



   # creating 2nd web subnet
  
   resource "aws_subnet" "pub-sub-2" {
    vpc_id =aws_vpc.myvpc-1.id
    cidr_block = "${var.pub-sub-2}"
    map_public_ip_on_launch = true
    availability_zone = "ap-south-1b"
    tags = {
        Name ="pub-sub-2"
    }
   }
            




 # creating 1st application subnet
  resource "aws_subnet" "pvt-sub-1" {
    vpc_id =aws_vpc.myvpc.vpc_id
    cidr_block = "${var.pvt-sub-1}"
    map_public_ip_on_launch = false
    availability_zone = "ap-south-1a"
    tags = {
        Name ="pvt-sub-1"
    }
   }




# creating 2nd application subnet 
   resource "aws_subnet" "pvt-sub-2" {
    vpc_id =aws_vpc.myvpc.vpc_id
    cidr_block = "${var.pvt-sub-2}"
    map_public_ip_on_launch = false
    availability_zone = "ap-south-1a"
    tags = {
        Name ="pvt-sub-2"
    }
   }



# creating 3rd application subnet
 resource "aws_subnet" "database-sub-1" {
    vpc_id =aws_vpc.myvpc.vpc_id
    cidr_block = "${var.database-sub-1}"
    map_public_ip_on_launch = false
    availability_zone = "ap-south-1b"
    tags = {
        Name ="database-sub-1"
    }
   }




# creating 4th application subnet 
 resource "aws_subnet" "database-sub-2" {
    vpc_id =aws_vpc.myvpc.vpc_id
    cidr_block = "${var.database-sub-2}"
    map_public_ip_on_launch = false
    availability_zone = "ap-south-1b"
    tags = {
        Name ="database-sub-2"
    }
   }

      