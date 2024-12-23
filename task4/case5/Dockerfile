FROM node:16-alpine as build-stage

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx:stable-alpine as production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf

COPY default.conf /etc/nginx/conf.d/default.conf

COPY start-nginx.sh /start-nginx.sh

RUN chmod +x /start-nginx.sh

EXPOSE 80

ENTRYPOINT ["/start-nginx.sh"]
