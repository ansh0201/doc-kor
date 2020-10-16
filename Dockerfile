FROM ubuntu:14.04
MAINTAINER "aa"
LABEL "purpose"="webserver pratice"
RUN apt-get update && apt-get install -y apache2
ADD ./test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
