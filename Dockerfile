FROM node:15.1-buster-slim 

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
#RUN mkdir -p /home/node/app/www && chown -R node:node /home/node/app/www

WORKDIR /home/node/app

COPY --chown=node:node ./.bashrc .
COPY --chown=node:node ./.dircolors .

USER node

COPY  --chown=node:node package*.json ./
#COPY --chown=node:node ./js ./js 
#COPY --chown=node:node ./html ./html 
COPY --chown=node:node ./index.js ./index.js 

RUN npm install

EXPOSE 8282

CMD ["node", "index"]
