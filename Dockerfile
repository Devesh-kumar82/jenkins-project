FROM centos:latest
RUN sudo yum install httpd -y
RUN sudo yum install net-tools -y
COPY index.html /var/www/html
RUN /usr/sbin/httpd
RUN echo /usr/sbin/httpd >> /root/.bashrc
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
