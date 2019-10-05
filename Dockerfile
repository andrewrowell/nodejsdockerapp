# The Docker image we're creating is based on the NodeJS 10 image.
FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies files.
COPY package*.json ./

# Install the dependencies.
RUN npm install

# Bundle app source.
COPY . .

# Copy pug files.
COPY *.pug ./

# Open port 80
EXPOSE 80

# Run Node.js
ENTRYPOINT [ "node", "server.js" ]
