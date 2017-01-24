FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install --silent
RUN npm install --save-dev jest
COPY . /usr/src/app
EXPOSE 3000

ENV PORT 3000

CMD [ "npm", "start" ]
