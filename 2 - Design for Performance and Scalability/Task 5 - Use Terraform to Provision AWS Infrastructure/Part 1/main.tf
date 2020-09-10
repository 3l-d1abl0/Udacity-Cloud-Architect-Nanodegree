# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    access_key = "Enter Access Key"
    secret_key = "Enter Secret key"
    region     = "ap-south-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
    ami = "ami-09052aa9bc337c78d"
    instance_type = "t2.micro"
    count = "4"
    vpc_security_group_ids=["sg-06ad200d92b646b51"]
    subnet_id="subnet-019d37aa4d1abd20a"
    availability_zone ="ap-south-1b"
    tags = {
        Name = "Udacity T2"
    }

}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
    ami = "ami-09052aa9bc337c78d"
    count = "2"
    instance_type = "m4.large"
    vpc_security_group_ids=["sg-06ad200d92b646b51"]
    subnet_id="subnet-019d37aa4d1abd20a"
    availability_zone ="ap-south-1b"
    tags = {
      Name = "Udacity M4"
    }
}