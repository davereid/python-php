python-php
==========

Python and PHP under the same roof (in **around 100 MB Docker image**).

https://github.com/elecena/python-php/pkgs/container/python-php

```
docker pull ghcr.io/elecena/python-php:3.10.4-8.1.4
```

```
$ docker images | head
REPOSITORY                   TAG            IMAGE ID       CREATED        SIZE
elecena/python-php           3.10.4-8.1.4   1939a4e57818   1 second ago   113MB
```

## Installed software

```
$ docker run -it elecena/python-php sh info.sh

### Python
Python 3.10.4
virtualenv 20.14.1 from /usr/local/lib/python3.10/site-packages/virtualenv/__init__.py

### PHP
PHP 8.1.4 (cli) (built: Apr  5 2022 01:28:22) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.4, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.4, Copyright (c), by Zend Technologies
Composer version 2.3.5 2022-04-13 16:43:00
[PHP Modules]
bz2
calendar
Core
ctype
curl
date
dom
exif
fileinfo
filter
ftp
hash
iconv
json
libxml
mbstring
mysqlnd
openssl
pcntl
pcre
PDO
pdo_sqlite
Phar
posix
readline
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
SPL
sqlite3
standard
sysvsem
sysvshm
tokenizer
xml
xmlreader
xmlwriter
xsl
Zend OPcache
zlib

[Zend Modules]
Zend OPcache
```
