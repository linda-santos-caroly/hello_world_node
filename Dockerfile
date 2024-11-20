FROM node:22.11.0-slim
RUN mkdir -p /opt/app
COPY . /opt/app
WORKDIR /opt/app
COPY package.json .
COPY package-lock.json .
RUN npm install
EXPOSE 8080
CMD [ "npm", "start"]