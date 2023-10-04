#pull base iamge
FROM python:3.11.5-slim-bookworm
#set environment 
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#set work directory
WORKDIR /app


#install dependencies
COPY requirements.txt /app/

RUN python -m pip install --upgrade pip
RUN pip install  -r requirements.txt

#copy project

COPY ./core  /app/