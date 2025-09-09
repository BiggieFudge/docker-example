# Use the official Node.js image as a base
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install npm packages including react-scripts
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port (default React app port)
EXPOSE 3000

# Command to run the React application
CMD ["npm", "start"]
