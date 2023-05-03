#creating database security group
resource "aws_security_group" "databasesg" {
    vpc_id = aws_vpc.myvpc-1.id

    ingress  {
        description = "allow inboud traffic from application layer"
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        security_groups = [aws_security_group.websg.id]

    }
    egress {
        from_port = 32768
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    
    tags = {
      Name = "database_sg"
    }
}