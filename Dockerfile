# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Unzip
apt-get install unzip -y && \
# need wget
apt-get install wget -y && \
# vim
apt-get install vim -y 


################################
# Install Terraform
################################

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip

# Unzip
RUN unzip terraform_0.13.5_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/

# Check that it's installed
RUN terraform --version 

################################
# Install python
################################

RUN apt-get install -y python3-pip
#RUN ln -s /usr/bin/python3 python
RUN apt-get install iputils-ping
#RUN installs ping
RUN apt-get install curl
#RUN installs curl
RUN pip3 install --upgrade pip
RUN python3 -V
RUN pip --version
# install prep for pip
RUN apt-get install -y build-essential 
# install requests
RUN pip install requests 
# install dotenv
RUN pip install python-dotenv 


#################################
# Install Git
#################################

RUN apt install -y git
RUN git --version

################################
# Install Ping
###############################


RUN apt-get install inetutils-ping