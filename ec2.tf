resource "aws_instance" "web" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t3.micro"

  tags = {
    Name = "JenkinsStage"
  }
key_name =  "Jenkins"
user_data = "${file("user-data-mavin.sh")}"
vpc_security_group_ids = [aws_security_group.allow_http.id]
}
