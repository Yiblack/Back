FROM node:20.19

WORKDIR /myapp

COPY package*.json ./
RUN npm install --omit=dev

# Copiamos el código **ANTES** de generar Prisma
COPY . .

# Ahora sí existe prisma/schema.prisma
RUN npx prisma generate

EXPOSE 3000

CMD ["node", "src/index.js"]
