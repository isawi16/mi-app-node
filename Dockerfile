# Imagen base ligera de Node.js
FROM node:20-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de definición de dependencias
COPY package*.json ./

# Instala las dependencias en modo producción
RUN npm ci --only=production

# Copia el resto del código de la aplicación
COPY . .

# Define el comando por defecto que ejecutará la app
CMD ["node", "app.js"]
