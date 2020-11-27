FROM node:14.14.0-alpine

# Set working directory.
WORKDIR /usr/src/app

# Copy necessay files 
COPY . .

# Run NPM Install and Build
RUN npm install
COPY . .

# Bundle files
RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]