FROM python:3.7-alpine
MAINTAINER Leandro S Rodrigues 

ENV PYTHONUNBUFFERED 1 
#cria variavel

COPY ./requirements.txt /requirements.txt
# copia e execulta instalaveis desse arquivo
RUN pip install -r /requirements.txt
#cria uma pasta para colocar os codigos 
RUN mkdir /app
WORKDIR /app
COPY ./app /app


#cria um usuario
RUN adduser -D user
USER user