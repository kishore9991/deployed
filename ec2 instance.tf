resource "aws_instance" "ec2_hello" {
ami="ami-02eb7a4783e7e9317" 
instance_type = "t2.micro"
count = 1
key_name = "zain"
vpc_security_group_ids = [aws_security_group.websg.id]
subnet_id = aws_subnet.pub-sub-1.id
associate_public_ip_address = true
user_data = "${file("userdata.sh")}"

    tags = {
      Name = "ec2_hello"
    }
}

#creating ec2 instance in 2nd public subnet 
resource "aws_instance" "ec2_hello_2" {
    ami = "ami-02eb7a4783e7e9317"
    instance_type = "t2.micro"
    count = 1
    key_name = "zain"
    vpc_security_group_ids = [aws_security_group.websg.id]
    subnet_id = aws_subnet.pub-sub-2.id
    associate_public_ip_address = true
    user_data = "${file("userdata.sh")}"

    tags = {
      Name = "ec2_hello_2"
    }
    
}