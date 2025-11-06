# Use Node base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
