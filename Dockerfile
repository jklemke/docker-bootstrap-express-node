FROM node:15.1-buster-slim 

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node ./.bashrc .
COPY --chown=node:node ./.dircolors .

USER node

COPY  --chown=node:node package*.json ./
COPY --chown=node:node ./index.js ./index.js 

RUN npm install

EXPOSE 8787

CMD ["node", "index"]
