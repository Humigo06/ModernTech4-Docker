# Base image using Node.js 
## Gives a linux environment with Node.js already installed
FROM node:16

# Working Directory
## Establishes where are the commands listed after run from
WORKDIR /app

# Copy requirements
## Copies the requirements (package.json) from my machine to the container
COPY package.json .

# Install dependencies
## Installs the dependencies listed in package.json with npm install command
RUN npm install

# Copy files to container
## Takes files from the local machine (first .) and copies them to the current directory (second .)
COPY . .

# Expose port
## Specifies the port the application uses
EXPOSE 3000

# The default command to run when the container starts
## Command that runs the application
CMD ["npm", "start"]