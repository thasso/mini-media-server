FROM nginx:1.13.3

COPY mime.types /etc/nginx/mime.types
COPY nginx.conf /etc/nginx/nginx.conf
COPY media.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html
COPY crossdomain.xml /usr/share/nginx/html
COPY clientaccesspolicy.xml /usr/share/nginx/html

RUN mkdir -p /srv/media
RUN mkdir -p /srv/root
VOLUME /srv/media
VOLUME /srv/root
