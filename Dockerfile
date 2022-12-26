FROM node:16-alpine

WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

# RUN yarn build

# FROM nginx:alpine

# WORKDIR /usr/share/nginx/html

# COPY --from=builder /app/build .

# CMD [ "nginx", "-g", "daemon off;" ]