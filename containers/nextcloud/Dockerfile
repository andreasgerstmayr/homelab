FROM nextcloud:30-apache
RUN apt-get update && \
    apt-get install -y smbclient libsmbclient-dev && \
    pecl install smbclient && \
    docker-php-ext-enable smbclient
