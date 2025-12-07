FROM node:20.19

WORKDIR /myapp

# Copiamos primero los package para aprovechar caché
COPY package*.json ./

# Instalamos dependencias
RUN npm install --omit=dev

# Copiamos el resto del proyecto
COPY . .

EXPOSE 3000

CMD ["node", "src/index.js"]
