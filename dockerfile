# Use Node.js LTS image
FROM node:24

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
