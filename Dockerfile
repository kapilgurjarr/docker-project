FROM  centos:latest
MAINTAINER kapilchawda72@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/the-new-audi.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip the-new-audi.zip
RUN cp -rvf the-new-audi/* .
RUN rm -rf the-new-audi the-new-audi.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
