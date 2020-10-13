# Use existing docker image as a Base

FROM node:alpine


#Create a folder to which app content will be copied

WORKDIR /app

# Copy package.json required for npm install
COPY ./package.json ./

# Download an install dependencies:
# Install npm
RUN npm install

# Copy entire content
COPY ./ ./

# Tell image what to do when it starts a Container

CMD ["node", "index.js"]
