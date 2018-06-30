FROM ubuntu:18.04

# Create app directory 
WORKDIR /usr/src/app

# INSTALL DEPENDENCIES
RUN apt-get update; apt-get install nodejs npm git git-core -y

# CLONE APP AND RUN NPM INSTALL
RUN git clone https://github.com/bsord/react-material-dashboard . && npm install

EXPOSE 3000
CMD ["npm", "start" ]
