FROM node:20.19

WORKDIR /myapp

COPY package*.json ./


RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
