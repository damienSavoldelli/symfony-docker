#Prepare image from Nginx Official
FROM nginx

#Setup Symfony
VOLUME ["/var/www/app/logs", "/var/www/app/cache","/var/www", "/var/www/web/uploads"]

#Setup Nginx
ADD deploy/symfony.conf /etc/nginx/sites-available/default

ADD . /var/www

#Setup App
RUN rm -rf /var/www/app/cache/*

CMD service php5-fpm start && nginx

