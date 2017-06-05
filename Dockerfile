FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN pip install --upgrade pip

ADD . /code
WORKDIR /code

# Install project packages
RUN pip install django
RUN pip install djangorestframework
RUN pip install gensim
RUN pip install nltk
RUN pip install pystemmer

EXPOSE 8000
CMD ["python", "manage.py", "runserver"]