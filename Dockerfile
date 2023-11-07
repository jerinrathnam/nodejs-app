FROM node:18

RUN mkdir -p /webserver

WORKDIR /webserver

COPY ./package.json ./
# COPY ./tsconfig.json ./

RUN npm cache clean --force
RUN npm install --force --unsafe-perm

COPY ./ ./

RUN npm run build

CMD ["npm", "run", "start"]

EXPOSE 3000