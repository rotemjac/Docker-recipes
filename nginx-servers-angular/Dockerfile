

##### Stage 1
FROM node:latest as node
LABEL   author="Rotem Jackoby"
WORKDIR /app

COPY web-app/package.json package.json
RUN npm install

COPY web-app .
RUN npm run build -- --prod

##### Stage 2
FROM nginx:alpine
VOLUME /var/cache/nginx
COPY --from=node /app/dist /usr/share/nginx/html
COPY config/nginx.conf /etc/nginx/conf.d/default.conf

