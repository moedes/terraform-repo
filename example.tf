provider "aws" {
  access_key = "AKIAJOBEIZQH7ZZFXBOA"
  secret_key = "q7ahydiOGwZmyPpL+CQzsbdMru8xt/IZeyOcYBsg"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}