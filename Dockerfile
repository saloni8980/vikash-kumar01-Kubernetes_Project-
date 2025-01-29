FROM centos:latest
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/browny.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip browny.zip
RUN cp -rvf browny-v1.0/* .
RUN rm -rf browny-v1.0 browny.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80

