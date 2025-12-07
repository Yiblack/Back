FROM node:20.19

WORKDIR /myapp

COPY package*.json ./

RUN npm install --omit=dev

# Generar prisma client
RUN npx prisma generate

COPY . .

EXPOSE 3000

CMD ["node", "src/index.js"]
