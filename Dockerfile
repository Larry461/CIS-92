FROM docker.io/python:3.10

RUN pip install django 
RUN python3 -m pip install psycopg2-binary
COPY mysite /mysite 
WORKDIR /mysite 

CMD python ./manage.py runserver 0.0.0.0:${PORT}