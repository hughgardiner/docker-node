FROM node:8-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .

RUN npm install
