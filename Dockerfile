# Etapa 1: Construir o aplicativo Vue.js
FROM node:14-alpine AS builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Etapa 2: Configurar o servidor Nginx
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
