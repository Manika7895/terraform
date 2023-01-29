provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "terraex" {
	ami = "ami-0fb653ca2d3203ac1"
	instance_type = "t2.micro"
	tags = {
		Name = "terraform-example"
		}
}