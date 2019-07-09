FROM nginx

LABEL maintainer "Atsuko Kurosawa <a-kurosawa@mi-labo.co.jp>"

RUN mkdir -m 644 /etc/nginx/sites-available
RUN mkdir -m 644 /etc/nginx/sites-enabled
COPY ./nginx.conf /etc/nginx/
COPY ./test_nginx.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/test_nginx.conf /etc/nginx/sites-enabled/
