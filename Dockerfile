#FROM node:0.12.9
FROM ubuntu:14.04

RUN apt-get -y update
RUN apt-get -y install git sudo make gcc tar curl bzip2

# Note the new setup script name for Node.js v0.12
RUN curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

# Then install with:
RUN sudo apt-get install -y nodejs

RUN npm install -g ember-cli

RUN npm install -g bower

RUN npm install -g phantomjs

#RUN yum -y update
#RUN yum -y install epel-release git sudo make gcc gcc-c++ tar curl bzip2 wget
#RUN useradd docker
## Edit sudoers file
## To avoid tty error on scripts
## To add docker user
#RUN sed -i -e "s/Defaults    requiretty.*/ #Defaults    requiretty/g" /etc/sudoers
##RUN echo "docker ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
#ADD install_node.sh /home/root/install_node.sh
#ADD install_emberjs.sh /home/root/install_emberjs.sh
#USER root
#WORKDIR /home/root
#RUN ls
#
#RUN curl --silent --location https://rpm.nodesource.com/setup | bash -
#RUN yum -y update
#RUN yum -y install nodejs
#RUN ./install_node.sh
#RUN ./install_emberjs.sh
