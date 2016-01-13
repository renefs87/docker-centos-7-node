# docker-centos-7-node
docker container for node on centos 7 which gets an specific version of node with its npm version and also ember-cli, bower and phantomjs.

```sh
docker pull renefs87/docker-centos-7-node
docker run -it --name=test renefs87/docker-centos-7-node /bin/bash
npm --version
node --version
```

Note: this creates a docker user and puts you in the /home/docker directory.  Includes gcc, gcc-g++, make, sudo, and git packages.
