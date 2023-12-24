# Khai báo provider (ví dụ: AWS)
provider "aws" {
  region = "us-west-2" # Thay đổi region tại đây nếu cần
  # Các thông tin xác thực AWS khác cũng có thể được sử dụng ở đây
}

# Tạo một resource instance của EC2
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# Tạo một resource Security Group để quản lý traffic
resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Allow inbound traffic on port 80 and 22"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
