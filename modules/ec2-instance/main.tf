
resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

 
  //count         = 2
  //user_data = "/main/userdata.sh"
   user_data = file("${path.root}/userdata.sh")

  tags = {
    Name = "${var.project_name}-ec2"
  }
 }




 