FROM node:8-alpine

# Create app directory
WORKDIR /usr/app

# Install app dependencies
COPY package.json .

RUN npm install

# Copy Source Code into Docker Image
COPY . .
