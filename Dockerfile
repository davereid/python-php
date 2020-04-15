# elecena.pl (c) 2015-2020

# @see https://hub.docker.com/_/python/
FROM python:3.8-alpine
RUN pip install virtualenv && rm -rf /root/.cache

# install dependencies
RUN apk update && apk add \
	php7 \
	php7-calendar \
	php7-curl \
	php7-ctype \
	php7-exif \
	php7-fileinfo \
	php7-ftp \
	php7-gettext \
	php7-iconv \
	php7-json \
	php7-mbstring \
	php7-opcache \
	php7-openssl \
	php7-pcntl \
	php7-pdo \
	php7-phar \
	php7-posix \
	php7-session \
	php7-shmop \
	php7-simplexml \
	php7-soap \
	php7-sockets \
	php7-sodium \
	php7-sysvmsg \
	php7-sysvsem \
	php7-sysvshm \
	php7-tokenizer \
	php7-wddx \
	php7-xmlreader \
	php7-xmlwriter \
	php7-xml \
	php7-xsl \
	&& rm -rf /tmp /var/log/* /var/cache/*

ENV PHP_VERSION 7.3.16

# add an info script
WORKDIR /opt

RUN echo "echo -e '### Python'; python -V; virtualenv --version; echo -e '\n### PHP'; php -v; php -m" > info.sh
RUN chmod 744 info.sh
