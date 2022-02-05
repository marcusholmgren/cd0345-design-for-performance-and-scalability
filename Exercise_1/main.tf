# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  profile = "ucloud"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
  count = 4
  ami = "ami-0a8b4cd432b1c3063"
  instance_type = "t2.micro"
  subnet_id = "subnet-00b0ace0d9195b925"
  key_name = "udacity-cloud-architect"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
  count = 0
  ami = "ami-0a8b4cd432b1c3063"
  instance_type = "m4.large"
  subnet_id = "subnet-00b0ace0d9195b925"
  key_name = "udacity-cloud-architect"
  tags = {
    Name = "Udacity M4"
  }
}
