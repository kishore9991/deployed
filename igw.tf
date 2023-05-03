# creating igw
resource "aws_internet_gateway" "myigw" {
    vpc_id =aws_vpc.myvpc-1.id
    tags = {
        Name ="myigw"
     } 
   }    