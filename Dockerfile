FROM debian:bookworm-20250113-slim

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

#Tailwind installation
RUN mkdir -p /home/tailwind && cd /home/tailwind && curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/download/v3.4.17/tailwindcss-linux-x64 && chmod a+x tailwindcss-linux-x64 && mv tailwindcss-linux-x64 tailwind

CMD chmod -R a+wr /var/www/html/data/
CMD cd /var/www/html && composer update && composer install

WORKDIR /var/www/html

EXPOSE 80
