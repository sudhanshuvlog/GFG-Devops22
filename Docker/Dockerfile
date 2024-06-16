FROM amazonlinux:latest
RUN yum install httpd -y
LABEL maintainer=sudhanshu
WORKDIR /var/www/html
COPY ./index.html .
EXPOSE 80
ENV x=100
ENV username="sudhanshu"
#CMD ["cal"]
ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]