FROM docker.io/python:3.10


RUN pip install django 
COPY mysite /mysite 
WORKDIR /mysite 
CMD python ./manage.py runserver 8080

