FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
    curl \
    unzip

# install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -

RUN apt-get install -y nodejs

# upgrade nodejs
RUN npm install -g npm@10.4.0

# install yarn
RUN npm install -g yarn

# clean apt cache
RUN apt-get clean autoclean
RUN apt-get autoremove -y
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/