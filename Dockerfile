FROM centos:latest
RUN yum install httpd -y
RUN yum install net-tools -y
COPY index.html /var/www/html
Run /usr/sbin/httpd
RUN echo /usr/sbin/httpd >> /root/.bashrc
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
