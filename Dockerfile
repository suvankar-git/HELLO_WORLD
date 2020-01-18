FROM alpine:latest
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE 8082
CMD [ "node", "index.js" ]
