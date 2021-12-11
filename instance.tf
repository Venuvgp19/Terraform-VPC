resource "aws_instance" "jenkins" {
  ami = "ami-082432365ef92b300"
  instance_type = "t2.micro"
  
  subnet_id = "${aws_subnet.Public-Subnet1.id}"
  
  vpc_security_group_ids = ["${aws_security_group.allow-http.id}"]
 
}
