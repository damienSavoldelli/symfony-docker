#!/bin/sh
DOMAIN_NAME="symfony.app"
if [ -z "$1" ]
    then
        echo "Info: No Environment is given will take prod as <env>"
else
    ENV=$1
fi
case $ENV in
    dev)
        echo "-- DEV"
        if [ ! -z "$2" ]
            then
            DOMAIN_NAME=$2
        fi
        echo "Add $DOMAIN_NAME in hosts file"
        echo "127.0.0.1 $DOMAIN_NAME" | sudo tee -a /etc/hosts
        break ;;
    prod)
        echo "-- PROD"
        break ;;
    *)
        echo "Erro : bad option $ENV!"
        echo "option should be prod|dev"
        exit 0
        break ;;

esac
#composer update
php app/console cache:clear --env=$ENV
php app/console assets:install --symlink
php app/console assetic:dump

echo "Configuration updated. The application should be running."


