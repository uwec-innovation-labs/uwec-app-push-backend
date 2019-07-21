FROM node:10-alpine

LABEL name="uwec-app-expo-backend"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install request --save

COPY . .

EXPOSE 3000

CMD ["npm", "start"]