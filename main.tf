#before importing
/*
resource "aws_instance" "ec2_import" {

}*/

#after importing and updating config file
resource "aws_instance" "ec2_import" {
  ami                         = "ami-084568db4383264d4"
  instance_type               = "t2.micro"
  key_name                    = "demo-key"
  associate_public_ip_address = false
  tenancy                     = "default"
  vpc_security_group_ids      = ["sg-0ed985a6a4b07667d"]
  tags = {
    "Name" = "dev-server"
  }
}
