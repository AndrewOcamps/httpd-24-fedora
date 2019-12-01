# Simple apache on fedora 31 
FROM fedora:31

# Owner
LABEL maintainer="Gerardo Ocampos <gerardoob97@hotmail.com>"

# Installing necessary apache packages
RUN yum update -y && \
    yum install -y httpd && yum install -y mod_ssl && \
    yum clean all

# Copying certificate example from localhost
COPY ./localhost.crt /etc/pki/tls/certs/localhost.crt
COPY ./localhost.key /etc/pki/tls/private/localhost.key

# Ports
EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]