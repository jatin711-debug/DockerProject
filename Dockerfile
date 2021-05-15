FROM node:10-alpine

RUN mkdir -p /home/johnny/app/node_modules && chown -R root:root /home/johnny/app

WORKDIR /home/johnny/app

COPY package*.json ./

USER root

RUN npm install

COPY --chown=johnny:johnny . .

EXPOSE 8080

CMD [ "johnny", "app.js" ]


