FROM ubuntu:latest

WORKDIR /var/www/html
RUN apt update && apt upgrade -y && apt install nginx vim -y
RUN rm -rf *.html
COPY . .
RUN cp -r Restaurant/* .
RUN rm -rf Restaurant/*


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
