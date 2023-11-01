FROM node:20-alpine
# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json para instalar las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Ejecuta el comando 'npm run build' para construir la aplicación
RUN npm run build

# Exponer el puerto
 EXPOSE 6060

# Comando para iniciar la aplicación
 CMD ["node", "build/server.js"]