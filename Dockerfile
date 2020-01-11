FROM python:3.8.1

RUN apt-get update

WORKDIR /app

ADD requirements.txt /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD . /app

# collect static files
#RUN python manage.py collectstatic --noinput


# run gunicorn
#CMD gunicorn --bind 0.0.0.0:$PORT wsgi
#CMD gunicorn hello_django.wsgi:application --bind 0.0.0.0:$PORT
#CMD gunicorn airline.wsgi:application --bind 0.0.0.0:$PORT