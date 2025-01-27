FROM node:18-alpine

WORKDIR /app

COPY package*.json .

RUN npm install -f

COPY . .

RUN npm run build

EXPOSE 80

CMD [ "npm", "run", "start:prod" ]

