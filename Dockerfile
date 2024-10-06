FROM debian:bookworm
LABEL maintainer="khalifasaid.2020@gmail.com"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninterractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/KHALIFASAID2020/static-website-example.git /var/www/html 
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
