# FROM centos:latest
# RUN cd /etc/yum.repos.d/
# RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# RUN yum install httpd -y
# RUN yum install net-tools -y
# COPY index.html /var/www/html
# RUN /usr/sbin/httpd
# RUN echo /usr/sbin/httpd >> /root/.bashrc
# CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
FROM httpd:2.4
COPY ./website/ /usr/local/apache2/htdocs/
COPY index.html /var/www/html
RUN echo /usr/sbin/httpd >> /root/.bashrc
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]

