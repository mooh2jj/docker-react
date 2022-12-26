FROM node:16-alpine AS builder

WORKDIR /app

COPY . .

# EXPOSE 3000

# CMD ["yarn", "start"]

RUN yarn build

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=builder /app/build .

CMD [ "nginx", "-g", "daemon off;" ]