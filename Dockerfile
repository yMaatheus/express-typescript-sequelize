FROM node:16.14-alpine

WORKDIR /app-backend

COPY package* ./

RUN yarn install

COPY . .

EXPOSE 3001

RUN npx tsc

CMD ["yarn", "start"]