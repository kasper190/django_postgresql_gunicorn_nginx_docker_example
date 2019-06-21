#!/bin/bash

echo "Waiting for Postgres connection"
python3 wait-for-postgres.py

echo "Collect static files"
python3 manage.py collectstatic --noinput

echo "Create database migrations"
python3 manage.py makemigrations --noinput

echo "Apply database migrations"
python3 manage.py migrate --noinput

echo "Run the Gunicorn server"
gunicorn -c gunicorn_conf.py django_project.wsgi:application -w 4 --timeout 120 --reload
