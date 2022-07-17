FROM node:14.17.4

WORKDIR /app

COPY ./package.json ./

RUN npm install

#COPY entrypoint.sh .
COPY server.js .

RUN chmod +x /app/app.js

COPY  . .

EXPOSE 4001

ENTRYPOINT [ "node", "server.js" ]


#ensure docker is running first, then
#RUN ~ docker build -t xyz-app . 