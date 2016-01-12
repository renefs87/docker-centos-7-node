FROM cern/cc7-base
MAINTAINER Lloyd Benson <lloyd.benson@gmail.com>
RUN yum -y update
RUN yum -y install epel-release git sudo make gcc gcc-c++
RUN useradd docker
RUN echo "docker ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ADD install_node.sh /home/docker/install_node.sh
USER docker
WORKDIR /home/docker
RUN ./install_node.sh
