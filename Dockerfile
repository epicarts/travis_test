# https://docs.travis-ci.com/user/docker/#building-a-docker-image-from-a-dockerfile  -참고
FROM python:3.8

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

#CMD ["./manage.py", "runserver", "0:8000"]
#ENTRYPOINT ["./manage.py", "runserver", "0:8000"]

#ENTRYPOINT echo "Hello, $name"

# ENV name ENTRYPOINT
# ENTRYPOINT ["echo", "Hello ENTRYPOINT", $name]
# CMD ["CMD"]

ENTRYPOINT ["./manage.py", "runserver", "0:8000"]
