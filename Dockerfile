FROM cern/cc7-base
RUN yum -y update
RUN yum -y install epel-release git sudo make gcc gcc-c++ tar curl bzip2 wget
RUN useradd docker
# Edit sudoers file
# To avoid tty error on scripts
# To add docker user
RUN sed -i -e "s/Defaults    requiretty.*/ #Defaults    requiretty/g" /etc/sudoers
RUN echo "docker ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ADD install_node.sh /home/docker/install_node.sh
ADD install_emberjs.sh /home/docker/install_emberjs.sh
USER docker
WORKDIR /home/docker
RUN ls
RUN ./install_node.sh
RUN ./install_emberjs.sh
