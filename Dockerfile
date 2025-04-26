# Step 1: Use an official Node.js image as a base image
FROM node:18

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install the app dependencies inside the container
RUN npm install

# Step 5: Copy the rest of the application files to the container
COPY . .

# Step 6: Expose the port the app will run on (usually 3000 for Node.js apps)
EXPOSE 3000

# Step 7: Run the application when the container starts
CMD ["npm", "start"]
