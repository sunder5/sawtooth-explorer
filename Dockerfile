FROM httpd:2.4

RUN echo "\
\n\
ServerName sawtooth-explorer\n\
AddDefaultCharset utf-8\n\
LoadModule proxy_module modules/mod_proxy.so\n\
LoadModule proxy_http_module modules/mod_proxy_http.so\n\
ProxyPass /transactions http://localhost:8008\n\
ProxyPassReverse /transactions http://localhost:8008\n\
\n\
" >>/usr/local/apache2/conf/httpd.conf

ENV PATH $PATH:/sawtooth-explorer/bin

EXPOSE 80/tcp
