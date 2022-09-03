FROM node:18.8.0-alpine AS web_main
RUN npm install -g http-server
COPY dist /var/www/html
EXPOSE 8080
CMD [ "http-server", "/var/www/html" ]
