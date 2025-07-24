resource "aws_instance" "ec2" {
  ami = var.ami_id
  instance_type= var.instance_type

  tags = {
    Name= "EC2"
  }
}

resource "aws_security_group" "firewall" {
  name= "allow_all"


  ingress{
    description= "allow https"
    from_port= 443
    to_port= 443
    protocol= "tcp"
    cidr_blocks= ["0.0.0.0/0"]
  }

  egress{
    description = "all all outbound"
    from_port= 0
    to_port = 0
    protocol= "-1"
    cidr_blocks= ["0.0.0.0/0"]
  }
}
