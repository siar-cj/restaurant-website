FROM ubuntu:latest

WORKDIR /var/www/html
RUN apt update && apt upgrade -y && apt install nginx 
RUN rm -rf index.html
COPY . .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
