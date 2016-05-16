#!/bin/sh

until mysqladmin -u $MYSQL_USER -p$MYSQL_PASSWORD -h db ping > /dev/null 2>&1; do
  >&2 echo "Mysql is unavailable - sleeping"
  sleep 1
done

python manage.py migrate

python manage.py runserver 0.0.0.0:8000
