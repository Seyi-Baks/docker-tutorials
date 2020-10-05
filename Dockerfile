# Specifying the build image
FROM node:14-slim

# Expose a port
EXPOSE 3000

# Spec a env var
ENV MESSAGE="Hello World"

# Spec the entry point
WORKDIR /usr/app

# Copy from base system to docker image
COPY package.json .
COPY package-lock.json .

# Run a command
RUN npm install

COPY index.js ./src/

# Run a command - ?can only do one of these
CMD npm start
