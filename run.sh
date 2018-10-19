#!/usr/bin/env bash

set -eux 

# kill kids if I die
trap "exit" INT TERM
trap "kill 0" EXIT

cd $APPDIR

# collect static
python manage.py collectstatic --noinput

# migrate database
python manage.py makemigrations 
python manage.py migrate

# launch wsgi app
uwsgi --http :8000 --wsgi-file $APPDIR/app/wsgi.py