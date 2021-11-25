# Image
FROM node:14

# Workdir
WORKDIR /usr/src/app

# Expose port
EXPOSE 5000

# Copy the app
COPY . .

# Install serve and run npm install
RUN npm install -g serve && npm install

# Build the app
RUN npm run build

# CMD
CMD ["serve", "-s", "-l", "5000", "build"]
