FROM node:16-alpine AS builder

WORKDIR /app

COPY . .
# RUN npm install --slient
RUN npm install -g npm@9.2.0    

RUN npm run build

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=builder /app/build .

CMD [ "nginx", "-g", "daemon off;" ]