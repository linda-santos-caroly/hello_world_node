FROM alpine:3.20

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

EXPOSE 8080

CMD [ "npm", "start" ]