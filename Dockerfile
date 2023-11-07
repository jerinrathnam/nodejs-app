FROM node:18

RUN mkdir -p /webserver

WORKDIR /webserver

COPY ./ ./

CMD ["pm2", "start", "index.js"]

EXPOSE 3000