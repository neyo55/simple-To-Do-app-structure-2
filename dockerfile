FROM node:10-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code to the container
COPY . .

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["node", "index.js"]
