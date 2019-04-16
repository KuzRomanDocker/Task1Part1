FROM debian

RUN apt-get -y update
RUN apt-get -y install nginx

RUN echo 'Hello user1!' > /var/www/html/index.html


CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
