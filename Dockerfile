FROM timbru31/node-alpine-git:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json .
RUN npm install
COPY . .

CMD ["node", "serveProduction.js"]
