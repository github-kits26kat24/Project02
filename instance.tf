resource "aws_instance" "web" {
  ami           = "ami-03e88be9ecff64781"
  instance_type = "t3.micro"
  key_name      = "kits26kat24"
  user_data              = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
EOF

  tags = {
    Name_1        = var.Name_1
    Environment_1 = var.Environment_1
    Department_1  = var.Department_1
  }
}


resource "aws_instance" "python3" {
  ami           = "ami-03e88be9ecff64781"
  instance_type = "t3.micro"
  key_name      = "kits26kat24"
  user_data              = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install python-3 -y
EOF

  tags = {
    Name_2        = var.Name_2
    Environment_2 = var.Environment_2
    Department_2  = var.Department_2
  }
}

resource "aws_instance" "Tomcat-App-Server-1" {
  ami           = "ami-03e88be9ecff64781"
  instance_type = "t3.micro"
  key_name      = "kits26kat24"
  user_data              = <<EOF
#!/bin/bash
sudo apt-get update -y
sudo apt-get install tomcat  -y
sudo apt-get tomcat-webapps.noarch -y
sudo apt-get tomcat-admin-webapps.noarch -y
sudo apt-get install tomcat7-docs -y
# Restart
sudo /etc/init.d/tomcat7 restart -y

# Stop
sudo /etc/init.d/tomcat7 stop -y
EOF

tags = {
    Name_3        = var.Name_3
    Environment_2 = var.Environment_2
    Department_2  = var.Department_2
  }
}
resource "aws_instance" "Tomcat-App-Server-2" {
  ami           = "ami-03e88be9ecff64781"
  instance_type = "t3.micro"
  key_name      = "kits26kat24"
  user_data              = <<EOF
#!/bin/bash
sudo apt-get update -y
sudo apt-get install tomcat  -y
sudo apt-get tomcat-webapps.noarch -y
sudo apt-get tomcat-admin-webapps.noarch -y
sudo apt-get install tomcat7-docs -y
# Restart
sudo /etc/init.d/tomcat7 restart -y

# Stop
sudo /etc/init.d/tomcat7 stop -y
EOF

tags = {
    Name_3        = var.Name_3
    Environment_2 = var.Environment_2
    Department_2  = var.Department_2
  }
}