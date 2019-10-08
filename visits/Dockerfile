FROM node:alpine

WORKDIR '/app'

# We want to make sure we are going to rebuild the image if we make changes in our package.json file
COPY package.json .
RUN npm install
COPY . .

CMD ["npm", "start"]