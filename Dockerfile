FROM debian:bookworm-slim

RUN apt update
RUN apt -y install nano lsof
RUN apt -y install apache2
RUN apt -y install php php-dev php-cli php-pear composer php-mysql

RUN yes '' | pecl install -f mongodb

RUN sed -i "s/;extension=pdo_mysql/extension=pdo_mysql/g" /etc/php/8.2/cli/php.ini
RUN sed -i '/;extension=shmop/a extension=mongodb.so' /etc/php/8.2/cli/php.ini

RUN sed -i "s/;extension=pdo_mysql/extension=pdo_mysql.so/g" /etc/php/8.2/apache2/php.ini
RUN sed -i '/;extension=shmop/a extension=mongodb.so' /etc/php/8.2/apache2/php.ini

RUN rm /var/www/html/index.html
COPY ./docker/config/apache2/000-default.conf /etc/apache2/sites-enabled/

EXPOSE 80

CMD chmod -R a+wr /var/www/html/data/
CMD cd /var/www/html && composer update && composer install




