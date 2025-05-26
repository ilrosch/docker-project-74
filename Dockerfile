FROM node:20.12.2

WORKDIR /app

RUN npm ci

COPY . .

CMD make start