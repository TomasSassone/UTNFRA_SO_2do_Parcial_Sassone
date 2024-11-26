# Uso una imagen base de nginx
FROM nginx:latest

# Elimino cualquier archivo HTML existente en el contenedor
RUN rm -rf /usr/share/nginx/html/*

# Copio index.html al contenedor
COPY index.html /usr/share/nginx/html/index.html

# Exponer puerto 80
EXPOSE 80

# Comando por defecto
CMD ["nginx", "-g", "daemon off;"]

