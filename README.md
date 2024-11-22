# docker-wks

# **Commands for EC2 instance configuration on AWS** #

sudo yum update -y (update my machine)
sudo yum install docker -y (install Docker)
sudo usermod -a -G docker ec2-user  (give administrative access and power to Docker in this machine)
newgrp docker (restart my terminal)
sudo service docker start
sudo systemctl enable docker
sudo docker run hello-world
sudo yum install git -y
sudo git clone https://github.com/AnaRitaRangel/docker-wks.git
cd docker-wks
	#[ec2-user@ip-172-31-95-6 ~]$ cd docker-wks
    #[ec2-user@ip-172-31-95-6 docker-wks]$

sudo docker build -t my-first-image:v2.0 .
sudo docker run -d -p 8501:8501 --name my-first-container my-first-image:v2.0
sudo docker ps
