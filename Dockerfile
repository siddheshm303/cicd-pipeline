# Use a Node.js base image (choose a version and variant like alpine for smaller size)
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your Node.js application listens on
EXPOSE 8080 

CMD [ "node", "server.js" ] 