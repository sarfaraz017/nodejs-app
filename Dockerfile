# Use the official Node.js image from Docker
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json file to install dependencies
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose port 3000 for the app to run
EXPOSE 3000

# Run the app when the container starts
CMD [ "node", "app.js" ]

