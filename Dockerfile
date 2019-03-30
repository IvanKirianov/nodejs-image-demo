FROM node:10-alpine

RUN mkdir -p /usr/src/app/node_modules && chown -R node:node /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

USER node

RUN npm install 

COPY --chown=node:node . .

EXPOSE 8181

#CMD [ "node", "app.js" ]
CMD [ "npm", "run", "start" ]
