resource "aws_db_instance" "Tomcat-App-Server-1" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "kitkat"
  password             = "kits26kat24!"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
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