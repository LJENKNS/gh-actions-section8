FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME bryantrossiter
ENV MONGODB_PASSWORD q8RD4Ynle7WGkKpa

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]