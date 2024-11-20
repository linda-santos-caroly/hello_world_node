FROM node:18.16.0-alpine3.17
RUN mkdir -p /opt/app
COPY . /opt/app
WORKDIR /opt/app
COPY package.json .
COPY package-lock.json .
RUN npm install
EXPOSE 8080
CMD [ "npm", "start"]