#pull base image
FROM python:3.11.6-slim-bullseye

#set enviorment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#SET WORK DIRECTORY
WORKDIR /code

#install dependancies
COPY ./requirment.txt .
RUN pip install -r requirment.txt

#copy projects
COPY . .