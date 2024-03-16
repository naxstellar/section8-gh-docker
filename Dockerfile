FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.aztdors.mongodb.net
ENV MONGODB_USERNAME naxvij2
ENV MONGODB_PASSWORD k5CJq9kMUStiF7J6

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]